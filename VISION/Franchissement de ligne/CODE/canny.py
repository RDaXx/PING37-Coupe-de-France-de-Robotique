import cv2
import numpy as np

#seuils pour la détections des bords de la fonction canny 
th1=125
th2=205



stop=0

#seuil du flou pour limiter les perturbations liées à l'environnement
k=3

cap=cv2.VideoCapture(0)
while True:
    if not stop:
        ret, frame=cap.read()
        if ret is False:
            quit()
        image=frame.copy()

    cv2.putText(image, "[u|j]th1: {:d}  [i|k]th2: {:d}  [y|h]blur: {:d}".format(th1, th2, k), (10, 40), cv2.FONT_HERSHEY_COMPLEX_SMALL, 1, (0, 255, 255), 1)
    cv2.putText(image, "[a]>>  [s]stop  [q]quit", (10, 70), cv2.FONT_HERSHEY_COMPLEX_SMALL, 1, (0, 255, 255), 1)
    cv2.imshow("image", image)
    gray=cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    if k!=1:
        gray=cv2.blur(gray, (k, k))
    gray_canny=cv2.Canny(gray, th1, th2)
    cv2.imshow("blur", gray)
    cv2.imshow("canny", gray_canny)

    if not stop:
        key=cv2.waitKey(10)&0xFF
    else:
        key=cv2.waitKey()
        image=frame.copy()

    if key==ord('q'):
        break
    if key==ord('y'):
        k=min(255, k+2)
    if key==ord('h'):
        k=max(1, k-2)
    if key==ord('u'):
        th1=min(255, th1+1)
    if key==ord('j'):
        th1=max(0, th1-1)
    if key==ord('i'):
        th2=min(255, th2+1)
    if key==ord('k'):
        th2=max(0, th2-1)
    if key==ord('s'):
        stop=not stop
    if key==ord('a'):
        for cpt in range(200):
            ret, frame=cap.read()
            image=frame.copy()
cap.release()
cv2.destroyAllWindows()
