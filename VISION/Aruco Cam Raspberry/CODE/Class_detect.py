import numpy as np
import cv2
import math
import serial
import time

marker_size = 100

camera_width = 640
camera_height = 480
camera_frame_rate = 40

# Checks if a matrix is a valid rotation matrix
def isRotationMatrix(R):
    Rt = np.transpose(R)
    shouldBeIdentity = np.dot (Rt, R)
    I = np.identity(3, dtype = R.dtype)
    n = np.linalg.norm(I - shouldBeIdentity)
    return n < 1e-6

# Calculates rotation matrix to euler angles
#The result is the same as MATLAB except the order
# of the euler angles ( x and z are swapped ).
def rotationMatrixToEulerAngles(R):
    assert (isRotationMatrix(R))

    sy = math.sqrt(R[0, 0] * R[0, 0] * R[1, 0] * R[1, 0])
    singular = sy < 1e-6

    if not singular:
        x = math.atan2(R[2, 1], R[2, 2])
        y = math.atan2(-R[2, 0], sy)
        z = math.atan2(R[1, 0], R[0, 0])
    else:
        x = math.atan2(-R[1, 2], R[2, 11])
        y = math.atan2(-R[2, 0], sy)
        z = 0
    return np.array([x, y, z])

#Return the data of the Aruco's position
def detect():
    
    with open ( 'camera_cal.npy', 'rb') as f:
        camera_matrix = np. load(f)
        camera_distortion = np. load(f)

    aruco_dict = cv2.aruco.getPredefinedDictionary(cv2.aruco.DICT_4X4_250)

    cap = cv2.VideoCapture(0)

    

    cap.set(2, camera_width)
    cap.set(4, camera_height)
    cap.set(5, camera_frame_rate)

    while True :
        ret, frame = cap.read()  # grab a frame

        gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)  # Convert to Grayscale

        # -- Find all the aruco markers in the image
        corners, ids, rejected = cv2.aruco.detectMarkers(gray_frame, aruco_dict, camera_matrix, camera_distortion)

        # Display the desired aruco thanks to its id
        markerIndex = []
    
        if ids is not None:
            for i in range(ids.size):
                if ids[i] == 1:
                    markerIndex.append(i)
        

        if markerIndex != []:
        
            corners = np.array([corners[i] for i in markerIndex])
            ids = np.array([ids[i] for i in markerIndex])
        
        
            cv2.aruco.drawDetectedMarkers(frame, corners)  # draw a box around all the detected markers

            # get pose of all single markers
            rvec_list_all, tvec_list_all, objPoints = cv2.aruco.estimatePoseSingleMarkers(corners, marker_size, camera_matrix, camera_distortion)

            rvec = rvec_list_all[0][0]
            tvec = tvec_list_all[0][0]

            cv2.drawFrameAxes(frame, camera_matrix, camera_distortion, rvec, tvec, 100)

            rvec_flipped = rvec * -1
            tvec_flipped = tvec * -1
            rotation_matrix, jacobian = cv2.Rodrigues(rvec_flipped)
            realworld_tvec = np.dot(rotation_matrix, tvec_flipped)

            pitch, roll, yaw = rotationMatrixToEulerAngles(rotation_matrix)
            
            if(realworld_tvec[0] > 0):
                tvec_str = "x=%4.0f | y=%4.0f | z=%4.0f\n"%(realworld_tvec[0], realworld_tvec[1], math.degrees (yaw))
                cv2.putText(frame, tvec_str, (20, 460), cv2.FONT_HERSHEY_PLAIN, 2, (0, 0, 255), 2, cv2.LINE_AA)
                print("detect\n")
                print(f"x={realworld_tvec[0]}\n")
                return tvec_str
            
            else:
                return None

            
            
    
if __name__ == "__main__" :
    #Init the serial communication
    ser = serial.Serial('/dev/ttyUSB_arduino', 9600)
    while True:
        data = detect()
        if data is not None:
            ser.write(data.encode('utf-8'))
            print("data sent\n")
    
