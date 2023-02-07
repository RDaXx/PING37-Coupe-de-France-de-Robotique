<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A4L-LOC" urn="urn:adsk.eagle:symbol:13874/1" library_version="1">
<wire x1="256.54" y1="3.81" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="256.54" y1="8.89" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="256.54" y1="13.97" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="256.54" y1="19.05" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="3.81" x2="161.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="24.13" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="215.265" y1="24.13" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="246.38" y1="3.81" x2="246.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="215.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="215.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<text x="217.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="217.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="230.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="216.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="260.35" y2="179.07" columns="6" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4L-LOC" urn="urn:adsk.eagle:component:13926/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A4L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-samtec" urn="urn:adsk.eagle:library:184">
<description>&lt;b&gt;Samtec Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SSW-110-02-G-S" library_version="2">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST SOCKET&lt;/b&gt;&lt;p&gt;
Source: Samtec SSW.pdf</description>
<wire x1="-12.829" y1="1.155" x2="12.829" y2="1.155" width="0.2032" layer="21"/>
<wire x1="12.829" y1="1.155" x2="12.829" y2="-1.155" width="0.2032" layer="21"/>
<wire x1="12.829" y1="-1.155" x2="-12.829" y2="-1.155" width="0.2032" layer="21"/>
<wire x1="-12.829" y1="-1.155" x2="-12.829" y2="1.155" width="0.2032" layer="21"/>
<wire x1="-12.175" y1="0.755" x2="-10.675" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-10.675" y1="0.755" x2="-10.675" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-10.675" y1="-0.745" x2="-12.175" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-12.175" y1="-0.745" x2="-12.175" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-9.635" y1="0.755" x2="-8.135" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-8.135" y1="0.755" x2="-8.135" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-8.135" y1="-0.745" x2="-9.635" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-9.635" y1="-0.745" x2="-9.635" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-7.095" y1="0.755" x2="-5.595" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-5.595" y1="0.755" x2="-5.595" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-5.595" y1="-0.745" x2="-7.095" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-7.095" y1="-0.745" x2="-7.095" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-4.555" y1="0.755" x2="-3.055" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-3.055" y1="0.755" x2="-3.055" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-3.055" y1="-0.745" x2="-4.555" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-4.555" y1="-0.745" x2="-4.555" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-2.015" y1="0.755" x2="-0.515" y2="0.755" width="0.2032" layer="51"/>
<wire x1="-0.515" y1="0.755" x2="-0.515" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-0.515" y1="-0.745" x2="-2.015" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="-2.015" y1="-0.745" x2="-2.015" y2="0.755" width="0.2032" layer="51"/>
<wire x1="0.525" y1="0.755" x2="2.025" y2="0.755" width="0.2032" layer="51"/>
<wire x1="2.025" y1="0.755" x2="2.025" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="2.025" y1="-0.745" x2="0.525" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="0.525" y1="-0.745" x2="0.525" y2="0.755" width="0.2032" layer="51"/>
<wire x1="3.065" y1="0.755" x2="4.565" y2="0.755" width="0.2032" layer="51"/>
<wire x1="4.565" y1="0.755" x2="4.565" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="4.565" y1="-0.745" x2="3.065" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="3.065" y1="-0.745" x2="3.065" y2="0.755" width="0.2032" layer="51"/>
<wire x1="5.605" y1="0.755" x2="7.105" y2="0.755" width="0.2032" layer="51"/>
<wire x1="7.105" y1="0.755" x2="7.105" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="7.105" y1="-0.745" x2="5.605" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="5.605" y1="-0.745" x2="5.605" y2="0.755" width="0.2032" layer="51"/>
<wire x1="8.145" y1="0.755" x2="9.645" y2="0.755" width="0.2032" layer="51"/>
<wire x1="9.645" y1="0.755" x2="9.645" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="9.645" y1="-0.745" x2="8.145" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="8.145" y1="-0.745" x2="8.145" y2="0.755" width="0.2032" layer="51"/>
<wire x1="10.685" y1="0.755" x2="12.185" y2="0.755" width="0.2032" layer="51"/>
<wire x1="12.185" y1="0.755" x2="12.185" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="12.185" y1="-0.745" x2="10.685" y2="-0.745" width="0.2032" layer="51"/>
<wire x1="10.685" y1="-0.745" x2="10.685" y2="0.755" width="0.2032" layer="51"/>
<pad name="1" x="-11.43" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="2" x="-8.89" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="3" x="-6.35" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="4" x="-3.81" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="5" x="-1.27" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="6" x="1.27" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="7" x="3.81" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="8" x="6.35" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="9" x="8.89" y="0" drill="1" diameter="1.5" shape="octagon"/>
<pad name="10" x="11.43" y="0" drill="1" diameter="1.5" shape="octagon"/>
<text x="-11.938" y="-3.048" size="1.6764" layer="21" font="vector">1</text>
<text x="-13.335" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="14.605" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="SSW-110-02-G-S-RA" library_version="2">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST SOCKET&lt;/b&gt;&lt;p&gt;
Source: Samtec SSW.pdf</description>
<wire x1="-12.829" y1="-8.396" x2="12.829" y2="-8.396" width="0.2032" layer="21"/>
<wire x1="12.829" y1="-8.396" x2="12.829" y2="-0.106" width="0.2032" layer="21"/>
<wire x1="12.829" y1="-0.106" x2="-12.829" y2="-0.106" width="0.2032" layer="21"/>
<wire x1="-12.829" y1="-0.106" x2="-12.829" y2="-8.396" width="0.2032" layer="21"/>
<pad name="1" x="-11.43" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="2" x="-8.89" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="3" x="-6.35" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="4" x="-3.81" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="5" x="-1.27" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="6" x="1.27" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="7" x="3.81" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="8" x="6.35" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="9" x="8.89" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<pad name="10" x="11.43" y="1.524" drill="1" diameter="1.5" shape="octagon"/>
<text x="-12.025" y="-7.65" size="1.6764" layer="21" font="vector">1</text>
<text x="-13.335" y="-7.62" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="14.605" y="-7.62" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-11.684" y1="0" x2="-11.176" y2="1.778" layer="51"/>
<rectangle x1="-9.144" y1="0" x2="-8.636" y2="1.778" layer="51"/>
<rectangle x1="-6.604" y1="0" x2="-6.096" y2="1.778" layer="51"/>
<rectangle x1="-4.064" y1="0" x2="-3.556" y2="1.778" layer="51"/>
<rectangle x1="-1.524" y1="0" x2="-1.016" y2="1.778" layer="51"/>
<rectangle x1="1.016" y1="0" x2="1.524" y2="1.778" layer="51"/>
<rectangle x1="3.556" y1="0" x2="4.064" y2="1.778" layer="51"/>
<rectangle x1="6.096" y1="0" x2="6.604" y2="1.778" layer="51"/>
<rectangle x1="8.636" y1="0" x2="9.144" y2="1.778" layer="51"/>
<rectangle x1="11.176" y1="0" x2="11.684" y2="1.778" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="FPINV" library_version="2">
<wire x1="-1.778" y1="0.508" x2="0" y2="0.508" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0" y1="-0.508" x2="-1.778" y2="-0.508" width="0.254" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.048" y="0.762" size="1.524" layer="95" rot="R180">&gt;NAME</text>
<pin name="1" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="FPIN" library_version="2">
<wire x1="-1.778" y1="0.508" x2="0" y2="0.508" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0" y1="-0.508" x2="-1.778" y2="-0.508" width="0.254" layer="94"/>
<text x="-3.048" y="0.762" size="1.524" layer="95" rot="R180">&gt;NAME</text>
<pin name="1" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SSW-110-02-G-S" prefix="X" library_version="2">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST SOCKET&lt;/b&gt;&lt;p&gt;
Source: Samtec SSW.pdf</description>
<gates>
<gate name="-1" symbol="FPINV" x="0" y="10.16" addlevel="always"/>
<gate name="-2" symbol="FPIN" x="0" y="7.62" addlevel="always"/>
<gate name="-3" symbol="FPIN" x="0" y="5.08" addlevel="always"/>
<gate name="-4" symbol="FPIN" x="0" y="2.54" addlevel="always"/>
<gate name="-5" symbol="FPIN" x="0" y="0" addlevel="always"/>
<gate name="-6" symbol="FPIN" x="0" y="-2.54" addlevel="always"/>
<gate name="-7" symbol="FPIN" x="0" y="-5.08" addlevel="always"/>
<gate name="-8" symbol="FPIN" x="0" y="-7.62" addlevel="always"/>
<gate name="-9" symbol="FPIN" x="0" y="-10.16" addlevel="always"/>
<gate name="-10" symbol="FPIN" x="0" y="-12.7" addlevel="always"/>
</gates>
<devices>
<device name="" package="SSW-110-02-G-S">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-10" pin="1" pad="10"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
<connect gate="-5" pin="1" pad="5"/>
<connect gate="-6" pin="1" pad="6"/>
<connect gate="-7" pin="1" pad="7"/>
<connect gate="-8" pin="1" pad="8"/>
<connect gate="-9" pin="1" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="Samtec Inc." constant="no"/>
<attribute name="MPN" value="SSW-110-02-G-S" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="11P9482" constant="no"/>
</technology>
</technologies>
</device>
<device name="-RA" package="SSW-110-02-G-S-RA">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-10" pin="1" pad="10"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
<connect gate="-5" pin="1" pad="5"/>
<connect gate="-6" pin="1" pad="6"/>
<connect gate="-7" pin="1" pad="7"/>
<connect gate="-8" pin="1" pad="8"/>
<connect gate="-9" pin="1" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="Samtec Inc." constant="no"/>
<attribute name="MPN" value="SSW-110-02-G-S-RA" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="11P9483" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-phoenix-508" urn="urn:adsk.eagle:library:176">
<description>&lt;b&gt;Phoenix Connectors&lt;/b&gt;&lt;p&gt;
Grid 5.08 mm&lt;p&gt;
Based on the previous libraries:
&lt;ul&gt;
&lt;li&gt;pho508a.lbr
&lt;li&gt;pho508b.lbr
&lt;li&gt;pho508c.lbr
&lt;li&gt;pho508d.lbr
&lt;li&gt;pho508e.lbr
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MKDSN1,5/2-5,08" urn="urn:adsk.eagle:footprint:9541/1" library_version="3">
<description>&lt;b&gt;MKDSN 1,5/ 2-5,08&lt;/b&gt; Printklemme&lt;p&gt;
Nennstrom: 13,5 A&lt;br&gt;
Nennspannung: 250 V&lt;br&gt;
Rastermaß: 5,08 mm&lt;br&gt;
Polzahl: 2&lt;br&gt;
Anschlussart: Schraubanschluss&lt;br&gt;
Montage: Löten&lt;br&gt;
Anschlussrichtung Leiter/Platine: 0 °&lt;br&gt;
Artikelnummer: 1729128&lt;br&gt;
Source: http://eshop.phoenixcontact.com .. 1729128.pdf</description>
<wire x1="-5.1011" y1="-4.05" x2="5.0589" y2="-4.05" width="0.2032" layer="21"/>
<wire x1="-5.1011" y1="2.5243" x2="5.0589" y2="2.5243" width="0.2032" layer="21"/>
<wire x1="-2.7211" y1="-0.63" x2="-3.6341" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="-5.1011" y1="-1.9555" x2="-5.1011" y2="-2.4479" width="0.2032" layer="21"/>
<wire x1="-5.1011" y1="-3.327" x2="-5.2298" y2="-3.327" width="0.2032" layer="21"/>
<wire x1="-5.2298" y1="-2.913" x2="-5.1011" y2="-2.913" width="0.2032" layer="21"/>
<wire x1="-5.1011" y1="-3.1279" x2="-5.1011" y2="-2.913" width="0.2032" layer="21"/>
<wire x1="-5.1011" y1="-3.327" x2="-5.1011" y2="-3.1279" width="0.2032" layer="21"/>
<wire x1="-5.6711" y1="-2.763" x2="-5.4081" y2="-2.763" width="0.2032" layer="21"/>
<wire x1="-5.6711" y1="-3.477" x2="-5.4081" y2="-3.477" width="0.2032" layer="21"/>
<wire x1="-5.1011" y1="-2.913" x2="-5.1011" y2="-2.4479" width="0.2032" layer="21"/>
<wire x1="-5.2298" y1="-3.327" x2="-5.4081" y2="-3.477" width="0.2032" layer="21"/>
<wire x1="-5.6711" y1="-2.763" x2="-5.6711" y2="-3.477" width="0.2032" layer="21"/>
<wire x1="-5.1011" y1="2.5243" x2="-5.1011" y2="2.0413" width="0.2032" layer="21"/>
<wire x1="-5.1011" y1="-1.9555" x2="-5.1011" y2="2.0413" width="0.2032" layer="21"/>
<wire x1="-5.4081" y1="-2.763" x2="-5.2298" y2="-2.913" width="0.2032" layer="21"/>
<wire x1="5.0589" y1="-2.4479" x2="-5.1011" y2="-2.4479" width="0.2032" layer="21"/>
<wire x1="-2.5611" y1="-0.47" x2="-2.7211" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="-3.2001" y1="-0.119" x2="-2.5611" y2="0.52" width="0.2032" layer="51"/>
<wire x1="-4.1291" y1="-1.048" x2="-3.2001" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="0.9509" y1="-1.048" x2="1.8799" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="5.0589" y1="-1.9555" x2="5.0589" y2="-2.4479" width="0.2032" layer="21"/>
<wire x1="2.3589" y1="-0.63" x2="1.4459" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="1.8799" y1="-0.119" x2="2.5189" y2="0.52" width="0.2032" layer="51"/>
<wire x1="2.5189" y1="-0.47" x2="2.3589" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="4.0869" y1="1.098" x2="3.1489" y2="0.16" width="0.2032" layer="51"/>
<wire x1="2.6379" y1="0.639" x2="3.5919" y2="1.593" width="0.2032" layer="51"/>
<wire x1="3.1489" y1="0.16" x2="2.5189" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="2.5189" y1="0.52" x2="2.6379" y2="0.639" width="0.2032" layer="51"/>
<wire x1="-1.9311" y1="0.16" x2="-2.5611" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="-2.5611" y1="0.52" x2="-2.4421" y2="0.639" width="0.2032" layer="51"/>
<wire x1="-2.4421" y1="0.639" x2="-1.4881" y2="1.593" width="0.2032" layer="51"/>
<wire x1="-0.9931" y1="1.098" x2="-1.9311" y2="0.16" width="0.2032" layer="51"/>
<wire x1="-5.1011" y1="-3.1279" x2="5.0589" y2="-3.1279" width="0.2032" layer="21"/>
<wire x1="5.0589" y1="-3.1279" x2="5.0589" y2="-2.4479" width="0.2032" layer="21"/>
<wire x1="5.0589" y1="-1.9555" x2="5.0589" y2="2.0413" width="0.2032" layer="21"/>
<wire x1="5.0589" y1="2.5243" x2="5.0589" y2="2.0413" width="0.2032" layer="21"/>
<wire x1="5.0589" y1="2.5243" x2="5.0589" y2="4.05" width="0.2032" layer="21"/>
<wire x1="-5.1011" y1="-3.75" x2="-5.1011" y2="-3.327" width="0.2032" layer="21"/>
<wire x1="5.0589" y1="-3.75" x2="5.0589" y2="-3.1279" width="0.2032" layer="21"/>
<wire x1="-5.1011" y1="4.05" x2="5.0589" y2="4.05" width="0.2032" layer="21"/>
<wire x1="-5.1011" y1="2.5243" x2="-5.1011" y2="4.05" width="0.2032" layer="21"/>
<wire x1="5.0589" y1="-3.75" x2="-5.1011" y2="-3.75" width="0.2032" layer="21"/>
<wire x1="-5.1011" y1="-3.75" x2="-5.1011" y2="-4.05" width="0.2032" layer="21"/>
<wire x1="5.0589" y1="-3.75" x2="5.0589" y2="-4.05" width="0.2032" layer="21"/>
<wire x1="-3.2001" y1="-0.119" x2="-2.7211" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="1.8799" y1="-0.119" x2="2.3589" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="3.1489" y1="0.16" x2="2.6379" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="-1.9311" y1="0.16" x2="-2.4421" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<circle x="-2.5611" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<circle x="2.5189" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<pad name="1" x="-2.5611" y="0.025" drill="1.3" diameter="2"/>
<pad name="2" x="2.5189" y="0.025" drill="1.3" diameter="2"/>
<text x="-4.7511" y="4.445" size="1.27" layer="25">&gt;NAME</text>
<text x="6.985" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="MKDSN1,5/2-5,08" urn="urn:adsk.eagle:package:9630/1" type="box" library_version="3">
<description>MKDSN 1,5/ 2-5,08 Printklemme
Nennstrom: 13,5 A
Nennspannung: 250 V
Rastermaß: 5,08 mm
Polzahl: 2
Anschlussart: Schraubanschluss
Montage: Löten
Anschlussrichtung Leiter/Platine: 0 °
Artikelnummer: 1729128
Source: http://eshop.phoenixcontact.com .. 1729128.pdf</description>
<packageinstances>
<packageinstance name="MKDSN1,5/2-5,08"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="KLV" urn="urn:adsk.eagle:symbol:9467/1" library_version="3">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="3.048" y="-0.889" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-3.683" size="1.778" layer="96">&gt;VALUE</text>
<pin name="KL" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MKDSN1,5/2-5,08" urn="urn:adsk.eagle:component:9705/2" prefix="X" library_version="3">
<description>&lt;b&gt;MKDSN 1,5/ 2-5,08&lt;/b&gt; Printklemme&lt;p&gt;
Nennstrom: 13,5 A&lt;br&gt;
Nennspannung: 250 V&lt;br&gt;
Rastermaß: 5,08 mm&lt;br&gt;
Polzahl: 2&lt;br&gt;
Anschlussart: Schraubanschluss&lt;br&gt;
Montage: Löten&lt;br&gt;
Anschlussrichtung Leiter/Platine: 0 °&lt;br&gt;
Artikelnummer: 1729128&lt;br&gt;
Source: http://eshop.phoenixcontact.com .. 1729128.pdf</description>
<gates>
<gate name="-1" symbol="KLV" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="KLV" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="MKDSN1,5/2-5,08">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9630/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="14" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="holes" urn="urn:adsk.eagle:library:237">
<description>&lt;b&gt;Mounting Holes and Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="2,8-PAD" urn="urn:adsk.eagle:footprint:14250/1" library_version="2">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 2.8 mm, round</description>
<wire x1="0" y1="2.921" x2="0" y2="2.667" width="0.0508" layer="21"/>
<wire x1="0" y1="-2.667" x2="0" y2="-2.921" width="0.0508" layer="21"/>
<wire x1="-1.778" y1="0" x2="0" y2="-1.778" width="2.286" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="1.778" x2="1.778" y2="0" width="2.286" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="0.635" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="2.921" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="3.175" width="0.8128" layer="39"/>
<circle x="0" y="0" radius="3.175" width="0.8128" layer="40"/>
<circle x="0" y="0" radius="3.175" width="0.8128" layer="43"/>
<circle x="0" y="0" radius="1.5" width="0.2032" layer="21"/>
<pad name="B2,8" x="0" y="0" drill="2.8" diameter="5.334"/>
</package>
<package name="3,0-PAD" urn="urn:adsk.eagle:footprint:14251/1" library_version="2">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 3.0 mm, round</description>
<wire x1="-2.159" y1="0" x2="0" y2="-2.159" width="2.4892" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.159" x2="2.159" y2="0" width="2.4892" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.556" width="1.016" layer="39"/>
<circle x="0" y="0" radius="3.556" width="1.016" layer="40"/>
<circle x="0" y="0" radius="3.556" width="1.016" layer="43"/>
<circle x="0" y="0" radius="1.6" width="0.2032" layer="21"/>
<pad name="B3,0" x="0" y="0" drill="3" diameter="5.842"/>
<text x="-1.27" y="-3.81" size="1.27" layer="48">3,0</text>
</package>
<package name="3,2-PAD" urn="urn:adsk.eagle:footprint:14252/1" library_version="2">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 3.2 mm, round</description>
<wire x1="-2.159" y1="0" x2="0" y2="-2.159" width="2.4892" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.159" x2="2.159" y2="0" width="2.4892" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.683" width="1.27" layer="39"/>
<circle x="0" y="0" radius="3.683" width="1.27" layer="40"/>
<circle x="0" y="0" radius="3.556" width="1.016" layer="43"/>
<circle x="0" y="0" radius="1.7" width="0.1524" layer="21"/>
<pad name="B3,2" x="0" y="0" drill="3.2" diameter="5.842"/>
<text x="-1.27" y="-3.81" size="1.27" layer="48">3,2</text>
</package>
<package name="3,3-PAD" urn="urn:adsk.eagle:footprint:14253/1" library_version="2">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 3.3 mm, round</description>
<wire x1="-2.159" y1="0" x2="0" y2="-2.159" width="2.4892" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.159" x2="2.159" y2="0" width="2.4892" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.683" width="1.27" layer="39"/>
<circle x="0" y="0" radius="3.683" width="1.27" layer="40"/>
<circle x="0" y="0" radius="3.556" width="1.016" layer="43"/>
<circle x="0" y="0" radius="1.7" width="0.2032" layer="21"/>
<pad name="B3,3" x="0" y="0" drill="3.3" diameter="5.842"/>
</package>
<package name="3,6-PAD" urn="urn:adsk.eagle:footprint:14254/1" library_version="2">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 3.6 mm, round</description>
<wire x1="-2.159" y1="0" x2="0" y2="-2.159" width="2.4892" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.159" x2="2.159" y2="0" width="2.4892" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.683" width="1.397" layer="39"/>
<circle x="0" y="0" radius="3.683" width="1.397" layer="40"/>
<circle x="0" y="0" radius="3.556" width="1.016" layer="43"/>
<circle x="0" y="0" radius="1.9" width="0.2032" layer="21"/>
<pad name="B3,6" x="0" y="0" drill="3.6" diameter="5.842"/>
</package>
<package name="4,1-PAD" urn="urn:adsk.eagle:footprint:14255/1" library_version="2">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 4.1 mm, round</description>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="4.572" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="5.08" width="2" layer="43"/>
<circle x="0" y="0" radius="2.15" width="0.2032" layer="21"/>
<pad name="B4,1" x="0" y="0" drill="4.1" diameter="8"/>
</package>
<package name="4,3-PAD" urn="urn:adsk.eagle:footprint:14256/1" library_version="2">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 4.3 mm, round</description>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="5.588" width="2" layer="43"/>
<circle x="0" y="0" radius="5.588" width="2" layer="39"/>
<circle x="0" y="0" radius="5.588" width="2" layer="40"/>
<circle x="0" y="0" radius="2.25" width="0.1524" layer="21"/>
<pad name="B4,3" x="0" y="0" drill="4.3" diameter="9"/>
</package>
<package name="4,5-PAD" urn="urn:adsk.eagle:footprint:14257/1" library_version="2">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 4.5 mm, round</description>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="5.588" width="2" layer="43"/>
<circle x="0" y="0" radius="5.588" width="2" layer="39"/>
<circle x="0" y="0" radius="5.588" width="2" layer="40"/>
<circle x="0" y="0" radius="2.35" width="0.1524" layer="21"/>
<pad name="B4,5" x="0" y="0" drill="4.5" diameter="9"/>
</package>
<package name="5,0-PAD" urn="urn:adsk.eagle:footprint:14258/1" library_version="2">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 5.0 mm, round</description>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="5.588" width="2" layer="43"/>
<circle x="0" y="0" radius="5.588" width="2" layer="39"/>
<circle x="0" y="0" radius="5.588" width="2" layer="40"/>
<circle x="0" y="0" radius="2.6" width="0.1524" layer="21"/>
<pad name="B5" x="0" y="0" drill="5" diameter="9"/>
</package>
<package name="5,5-PAD" urn="urn:adsk.eagle:footprint:14259/1" library_version="2">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt; 5.5 mm, round</description>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="5.588" width="2" layer="43"/>
<circle x="0" y="0" radius="5.588" width="2" layer="39"/>
<circle x="0" y="0" radius="5.588" width="2" layer="40"/>
<circle x="0" y="0" radius="2.85" width="0.1524" layer="21"/>
<pad name="B5,5" x="0" y="0" drill="5.5" diameter="9"/>
</package>
</packages>
<packages3d>
<package3d name="2,8-PAD" urn="urn:adsk.eagle:package:14281/1" type="box" library_version="2">
<description>MOUNTING PAD 2.8 mm, round</description>
<packageinstances>
<packageinstance name="2,8-PAD"/>
</packageinstances>
</package3d>
<package3d name="3,0-PAD" urn="urn:adsk.eagle:package:14280/1" type="box" library_version="2">
<description>MOUNTING PAD 3.0 mm, round</description>
<packageinstances>
<packageinstance name="3,0-PAD"/>
</packageinstances>
</package3d>
<package3d name="3,2-PAD" urn="urn:adsk.eagle:package:14282/1" type="box" library_version="2">
<description>MOUNTING PAD 3.2 mm, round</description>
<packageinstances>
<packageinstance name="3,2-PAD"/>
</packageinstances>
</package3d>
<package3d name="3,3-PAD" urn="urn:adsk.eagle:package:14283/1" type="box" library_version="2">
<description>MOUNTING PAD 3.3 mm, round</description>
<packageinstances>
<packageinstance name="3,3-PAD"/>
</packageinstances>
</package3d>
<package3d name="3,6-PAD" urn="urn:adsk.eagle:package:14284/1" type="box" library_version="2">
<description>MOUNTING PAD 3.6 mm, round</description>
<packageinstances>
<packageinstance name="3,6-PAD"/>
</packageinstances>
</package3d>
<package3d name="4,1-PAD" urn="urn:adsk.eagle:package:14285/1" type="box" library_version="2">
<description>MOUNTING PAD 4.1 mm, round</description>
<packageinstances>
<packageinstance name="4,1-PAD"/>
</packageinstances>
</package3d>
<package3d name="4,3-PAD" urn="urn:adsk.eagle:package:14286/1" type="box" library_version="2">
<description>MOUNTING PAD 4.3 mm, round</description>
<packageinstances>
<packageinstance name="4,3-PAD"/>
</packageinstances>
</package3d>
<package3d name="4,5-PAD" urn="urn:adsk.eagle:package:14287/1" type="box" library_version="2">
<description>MOUNTING PAD 4.5 mm, round</description>
<packageinstances>
<packageinstance name="4,5-PAD"/>
</packageinstances>
</package3d>
<package3d name="5,0-PAD" urn="urn:adsk.eagle:package:14288/1" type="box" library_version="2">
<description>MOUNTING PAD 5.0 mm, round</description>
<packageinstances>
<packageinstance name="5,0-PAD"/>
</packageinstances>
</package3d>
<package3d name="5,5-PAD" urn="urn:adsk.eagle:package:14291/1" type="box" library_version="2">
<description>MOUNTING PAD 5.5 mm, round</description>
<packageinstances>
<packageinstance name="5,5-PAD"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MOUNT-PAD" urn="urn:adsk.eagle:symbol:14249/1" library_version="2">
<wire x1="0.254" y1="2.032" x2="2.032" y2="0.254" width="1.016" layer="94" curve="-75.749967" cap="flat"/>
<wire x1="-2.032" y1="0.254" x2="-0.254" y2="2.032" width="1.016" layer="94" curve="-75.749967" cap="flat"/>
<wire x1="-2.032" y1="-0.254" x2="-0.254" y2="-2.032" width="1.016" layer="94" curve="75.749967" cap="flat"/>
<wire x1="0.254" y1="-2.032" x2="2.032" y2="-0.254" width="1.016" layer="94" curve="75.749967" cap="flat"/>
<circle x="0" y="0" radius="1.524" width="0.0508" layer="94"/>
<text x="2.794" y="0.5842" size="1.778" layer="95">&gt;NAME</text>
<text x="2.794" y="-2.4638" size="1.778" layer="96">&gt;VALUE</text>
<pin name="MOUNT" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MOUNT-PAD-ROUND" urn="urn:adsk.eagle:component:14303/2" prefix="H" library_version="2">
<description>&lt;b&gt;MOUNTING PAD&lt;/b&gt;, round</description>
<gates>
<gate name="G$1" symbol="MOUNT-PAD" x="0" y="0"/>
</gates>
<devices>
<device name="2.8" package="2,8-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B2,8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14281/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="6" constant="no"/>
</technology>
</technologies>
</device>
<device name="3.0" package="3,0-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B3,0"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14280/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="17" constant="no"/>
</technology>
</technologies>
</device>
<device name="3.2" package="3,2-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B3,2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14282/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="4" constant="no"/>
</technology>
</technologies>
</device>
<device name="3.3" package="3,3-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B3,3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14283/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
<device name="3.6" package="3,6-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B3,6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14284/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="4.1" package="4,1-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B4,1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14285/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="4.3" package="4,3-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B4,3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14286/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="4.5" package="4,5-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B4,5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14287/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="5.0" package="5,0-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14288/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="5.5" package="5,5-PAD">
<connects>
<connect gate="G$1" pin="MOUNT" pad="B5,5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14291/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A4L-LOC" device=""/>
<part name="X5" library="con-phoenix-508" library_urn="urn:adsk.eagle:library:176" deviceset="MKDSN1,5/2-5,08" device="" package3d_urn="urn:adsk.eagle:package:9630/1"/>
<part name="X6" library="con-phoenix-508" library_urn="urn:adsk.eagle:library:176" deviceset="MKDSN1,5/2-5,08" device="" package3d_urn="urn:adsk.eagle:package:9630/1"/>
<part name="X7" library="con-phoenix-508" library_urn="urn:adsk.eagle:library:176" deviceset="MKDSN1,5/2-5,08" device="" package3d_urn="urn:adsk.eagle:package:9630/1"/>
<part name="X8" library="con-phoenix-508" library_urn="urn:adsk.eagle:library:176" deviceset="MKDSN1,5/2-5,08" device="" package3d_urn="urn:adsk.eagle:package:9630/1"/>
<part name="X9" library="con-phoenix-508" library_urn="urn:adsk.eagle:library:176" deviceset="MKDSN1,5/2-5,08" device="" package3d_urn="urn:adsk.eagle:package:9630/1"/>
<part name="X10" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-110-02-G-S" device=""/>
<part name="X11" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="SSW-110-02-G-S" device=""/>
<part name="H1" library="holes" library_urn="urn:adsk.eagle:library:237" deviceset="MOUNT-PAD-ROUND" device="3.0" package3d_urn="urn:adsk.eagle:package:14280/1"/>
<part name="H2" library="holes" library_urn="urn:adsk.eagle:library:237" deviceset="MOUNT-PAD-ROUND" device="3.0" package3d_urn="urn:adsk.eagle:package:14280/1"/>
<part name="H3" library="holes" library_urn="urn:adsk.eagle:library:237" deviceset="MOUNT-PAD-ROUND" device="3.0" package3d_urn="urn:adsk.eagle:package:14280/1"/>
<part name="H4" library="holes" library_urn="urn:adsk.eagle:library:237" deviceset="MOUNT-PAD-ROUND" device="3.0" package3d_urn="urn:adsk.eagle:package:14280/1"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="154.94" y="114.3" size="1.778" layer="91">GND</text>
<text x="157.48" y="132.08" size="1.778" layer="91">GND</text>
<text x="109.22" y="76.2" size="1.778" layer="91" rot="R270">GND</text>
<text x="96.52" y="76.2" size="1.778" layer="91" rot="R270">GND</text>
<text x="83.82" y="76.2" size="1.778" layer="91" rot="R270">GND</text>
<text x="99.06" y="124.46" size="1.778" layer="91" rot="R270">GND</text>
<text x="157.48" y="137.16" size="1.778" layer="91">5V</text>
<text x="83.82" y="121.92" size="1.778" layer="91" rot="R90">5V</text>
<text x="154.94" y="119.38" size="1.778" layer="91">12V</text>
<text x="114.3" y="88.9" size="1.778" layer="91" rot="R270">12V</text>
<text x="101.6" y="88.9" size="1.778" layer="91" rot="R270">12V</text>
<text x="88.9" y="88.9" size="1.778" layer="91" rot="R270">12V</text>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="-15.24" y="7.62" smashed="yes">
<attribute name="DRAWING_NAME" x="201.93" y="22.86" size="2.54" layer="94"/>
<attribute name="LAST_DATE_TIME" x="201.93" y="17.78" size="2.286" layer="94"/>
<attribute name="SHEET" x="215.265" y="12.7" size="2.54" layer="94"/>
</instance>
<instance part="X5" gate="-1" x="147.32" y="137.16" smashed="yes">
<attribute name="NAME" x="150.368" y="136.271" size="1.778" layer="95"/>
<attribute name="VALUE" x="144.78" y="133.477" size="1.778" layer="96"/>
</instance>
<instance part="X5" gate="-2" x="147.32" y="132.08" smashed="yes">
<attribute name="NAME" x="150.368" y="131.191" size="1.778" layer="95"/>
<attribute name="VALUE" x="144.78" y="128.397" size="1.778" layer="96"/>
</instance>
<instance part="X6" gate="-1" x="149.86" y="119.38" smashed="yes" rot="R180">
<attribute name="NAME" x="146.812" y="120.269" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="152.4" y="123.063" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="X6" gate="-2" x="147.32" y="114.3" smashed="yes">
<attribute name="NAME" x="150.368" y="113.411" size="1.778" layer="95"/>
<attribute name="VALUE" x="144.78" y="110.617" size="1.778" layer="96"/>
</instance>
<instance part="X7" gate="-1" x="88.9" y="81.28" smashed="yes" rot="R270">
<attribute name="NAME" x="88.011" y="78.232" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="85.217" y="83.82" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X7" gate="-2" x="83.82" y="78.74" smashed="yes" rot="R90">
<attribute name="NAME" x="84.709" y="81.788" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="87.503" y="76.2" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="X8" gate="-1" x="101.6" y="81.28" smashed="yes" rot="R270">
<attribute name="NAME" x="100.711" y="78.232" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="97.917" y="83.82" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X8" gate="-2" x="96.52" y="78.74" smashed="yes" rot="R90">
<attribute name="NAME" x="97.409" y="81.788" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="100.203" y="76.2" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="X9" gate="-1" x="114.3" y="81.28" smashed="yes" rot="R270">
<attribute name="NAME" x="113.411" y="78.232" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="110.617" y="83.82" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X9" gate="-2" x="109.22" y="78.74" smashed="yes" rot="R90">
<attribute name="NAME" x="110.109" y="81.788" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="112.903" y="76.2" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="X10" gate="-1" x="78.74" y="134.62" smashed="yes">
<attribute name="VALUE" x="76.2" y="137.16" size="1.778" layer="96"/>
<attribute name="NAME" x="75.692" y="135.382" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X10" gate="-2" x="78.74" y="132.08" smashed="yes">
<attribute name="NAME" x="75.692" y="132.842" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X10" gate="-3" x="78.74" y="129.54" smashed="yes">
<attribute name="NAME" x="75.692" y="130.302" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X10" gate="-4" x="78.74" y="127" smashed="yes">
<attribute name="NAME" x="75.692" y="127.762" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X10" gate="-5" x="78.74" y="124.46" smashed="yes">
<attribute name="NAME" x="75.692" y="125.222" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X10" gate="-6" x="78.74" y="121.92" smashed="yes">
<attribute name="NAME" x="75.692" y="122.682" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X10" gate="-7" x="78.74" y="119.38" smashed="yes">
<attribute name="NAME" x="75.692" y="120.142" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X10" gate="-8" x="78.74" y="116.84" smashed="yes">
<attribute name="NAME" x="75.692" y="117.602" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X10" gate="-9" x="78.74" y="114.3" smashed="yes">
<attribute name="NAME" x="75.692" y="115.062" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X10" gate="-10" x="78.74" y="111.76" smashed="yes">
<attribute name="NAME" x="75.692" y="112.522" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X11" gate="-1" x="93.98" y="134.62" smashed="yes">
<attribute name="VALUE" x="91.44" y="137.16" size="1.778" layer="96"/>
<attribute name="NAME" x="90.932" y="135.382" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X11" gate="-2" x="93.98" y="132.08" smashed="yes">
<attribute name="NAME" x="90.932" y="132.842" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X11" gate="-3" x="93.98" y="129.54" smashed="yes">
<attribute name="NAME" x="90.932" y="130.302" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X11" gate="-4" x="93.98" y="127" smashed="yes">
<attribute name="NAME" x="90.932" y="127.762" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X11" gate="-5" x="93.98" y="124.46" smashed="yes">
<attribute name="NAME" x="90.932" y="125.222" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X11" gate="-6" x="93.98" y="121.92" smashed="yes">
<attribute name="NAME" x="90.932" y="122.682" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X11" gate="-7" x="93.98" y="119.38" smashed="yes">
<attribute name="NAME" x="90.932" y="120.142" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X11" gate="-8" x="93.98" y="116.84" smashed="yes">
<attribute name="NAME" x="90.932" y="117.602" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X11" gate="-9" x="93.98" y="114.3" smashed="yes">
<attribute name="NAME" x="90.932" y="115.062" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="X11" gate="-10" x="93.98" y="111.76" smashed="yes">
<attribute name="NAME" x="90.932" y="112.522" size="1.524" layer="95" rot="R180"/>
</instance>
<instance part="H1" gate="G$1" x="91.44" y="53.34" smashed="yes">
<attribute name="NAME" x="94.234" y="53.9242" size="1.778" layer="95"/>
<attribute name="VALUE" x="94.234" y="50.8762" size="1.778" layer="96"/>
</instance>
<instance part="H2" gate="G$1" x="104.14" y="53.34" smashed="yes">
<attribute name="NAME" x="106.934" y="53.9242" size="1.778" layer="95"/>
<attribute name="VALUE" x="106.934" y="50.8762" size="1.778" layer="96"/>
</instance>
<instance part="H3" gate="G$1" x="116.84" y="53.34" smashed="yes">
<attribute name="NAME" x="119.634" y="53.9242" size="1.778" layer="95"/>
<attribute name="VALUE" x="119.634" y="50.8762" size="1.778" layer="96"/>
</instance>
<instance part="H4" gate="G$1" x="129.54" y="53.34" smashed="yes">
<attribute name="NAME" x="132.334" y="53.9242" size="1.778" layer="95"/>
<attribute name="VALUE" x="132.334" y="50.8762" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$3" class="0">
<segment>
<pinref part="X6" gate="-2" pin="KL"/>
<pinref part="X7" gate="-1" pin="KL"/>
<wire x1="144.78" y1="114.3" x2="144.78" y2="83.82" width="0.1524" layer="91"/>
<wire x1="144.78" y1="83.82" x2="114.3" y2="83.82" width="0.1524" layer="91"/>
<pinref part="X8" gate="-1" pin="KL"/>
<wire x1="114.3" y1="83.82" x2="101.6" y2="83.82" width="0.1524" layer="91"/>
<wire x1="101.6" y1="83.82" x2="88.9" y2="83.82" width="0.1524" layer="91"/>
<junction x="101.6" y="83.82"/>
<pinref part="X9" gate="-1" pin="KL"/>
<junction x="114.3" y="83.82"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="X6" gate="-1" pin="KL"/>
<pinref part="X7" gate="-2" pin="KL"/>
<wire x1="152.4" y1="119.38" x2="152.4" y2="76.2" width="0.1524" layer="91"/>
<wire x1="152.4" y1="76.2" x2="109.22" y2="76.2" width="0.1524" layer="91"/>
<pinref part="X8" gate="-2" pin="KL"/>
<wire x1="109.22" y1="76.2" x2="96.52" y2="76.2" width="0.1524" layer="91"/>
<wire x1="96.52" y1="76.2" x2="83.82" y2="76.2" width="0.1524" layer="91"/>
<junction x="96.52" y="76.2"/>
<pinref part="X9" gate="-2" pin="KL"/>
<junction x="109.22" y="76.2"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="X5" gate="-1" pin="KL"/>
<wire x1="144.78" y1="137.16" x2="81.28" y2="137.16" width="0.1524" layer="91"/>
<pinref part="X10" gate="-10" pin="1"/>
<wire x1="81.28" y1="137.16" x2="81.28" y2="134.62" width="0.1524" layer="91"/>
<pinref part="X10" gate="-1" pin="1"/>
<wire x1="81.28" y1="134.62" x2="81.28" y2="132.08" width="0.1524" layer="91"/>
<junction x="81.28" y="134.62"/>
<pinref part="X10" gate="-2" pin="1"/>
<wire x1="81.28" y1="132.08" x2="81.28" y2="129.54" width="0.1524" layer="91"/>
<junction x="81.28" y="132.08"/>
<pinref part="X10" gate="-3" pin="1"/>
<wire x1="81.28" y1="129.54" x2="81.28" y2="127" width="0.1524" layer="91"/>
<junction x="81.28" y="129.54"/>
<pinref part="X10" gate="-4" pin="1"/>
<wire x1="81.28" y1="127" x2="81.28" y2="124.46" width="0.1524" layer="91"/>
<junction x="81.28" y="127"/>
<pinref part="X10" gate="-5" pin="1"/>
<wire x1="81.28" y1="124.46" x2="81.28" y2="121.92" width="0.1524" layer="91"/>
<junction x="81.28" y="124.46"/>
<pinref part="X10" gate="-6" pin="1"/>
<wire x1="81.28" y1="121.92" x2="81.28" y2="119.38" width="0.1524" layer="91"/>
<junction x="81.28" y="121.92"/>
<pinref part="X10" gate="-7" pin="1"/>
<wire x1="81.28" y1="119.38" x2="81.28" y2="116.84" width="0.1524" layer="91"/>
<junction x="81.28" y="119.38"/>
<pinref part="X10" gate="-8" pin="1"/>
<wire x1="81.28" y1="116.84" x2="81.28" y2="114.3" width="0.1524" layer="91"/>
<junction x="81.28" y="116.84"/>
<pinref part="X10" gate="-9" pin="1"/>
<wire x1="81.28" y1="114.3" x2="81.28" y2="111.76" width="0.1524" layer="91"/>
<junction x="81.28" y="114.3"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X5" gate="-2" pin="KL"/>
<wire x1="144.78" y1="132.08" x2="104.14" y2="132.08" width="0.1524" layer="91"/>
<wire x1="104.14" y1="132.08" x2="104.14" y2="134.62" width="0.1524" layer="91"/>
<pinref part="X11" gate="-1" pin="1"/>
<wire x1="104.14" y1="134.62" x2="96.52" y2="134.62" width="0.1524" layer="91"/>
<pinref part="X11" gate="-10" pin="1"/>
<wire x1="96.52" y1="134.62" x2="96.52" y2="132.08" width="0.1524" layer="91"/>
<junction x="96.52" y="134.62"/>
<pinref part="X11" gate="-2" pin="1"/>
<wire x1="96.52" y1="132.08" x2="96.52" y2="129.54" width="0.1524" layer="91"/>
<junction x="96.52" y="132.08"/>
<pinref part="X11" gate="-3" pin="1"/>
<wire x1="96.52" y1="129.54" x2="96.52" y2="127" width="0.1524" layer="91"/>
<junction x="96.52" y="129.54"/>
<pinref part="X11" gate="-4" pin="1"/>
<wire x1="96.52" y1="127" x2="96.52" y2="124.46" width="0.1524" layer="91"/>
<junction x="96.52" y="127"/>
<pinref part="X11" gate="-5" pin="1"/>
<wire x1="96.52" y1="124.46" x2="96.52" y2="121.92" width="0.1524" layer="91"/>
<junction x="96.52" y="124.46"/>
<pinref part="X11" gate="-6" pin="1"/>
<wire x1="96.52" y1="121.92" x2="96.52" y2="119.38" width="0.1524" layer="91"/>
<junction x="96.52" y="121.92"/>
<pinref part="X11" gate="-7" pin="1"/>
<wire x1="96.52" y1="119.38" x2="96.52" y2="116.84" width="0.1524" layer="91"/>
<junction x="96.52" y="119.38"/>
<pinref part="X11" gate="-8" pin="1"/>
<wire x1="96.52" y1="116.84" x2="96.52" y2="114.3" width="0.1524" layer="91"/>
<junction x="96.52" y="116.84"/>
<pinref part="X11" gate="-9" pin="1"/>
<wire x1="96.52" y1="114.3" x2="96.52" y2="111.76" width="0.1524" layer="91"/>
<junction x="96.52" y="114.3"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
