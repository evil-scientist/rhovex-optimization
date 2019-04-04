log1="run1-core0.log"
log2="run2-core0.log"
log3="run3-core0.log"

# CORE 0 ------------------------------------------------------------------

rCYC=$(sed '16q;d'  $log1)
rSTALL=$(sed '17q;d'  $log1)
rBUN=$(sed '18q;d'  $log1)
rSYL=$(sed '19q;d'  $log1)
rNOP=$(sed '20q;d'  $log1)
rIACC=$(sed '21q;d'  $log1)
rIMISS=$(sed '22q;d'  $log1)
rDRACC=$(sed '23q;d'  $log1)
rDRMISS=$(sed '24q;d'  $log1)
rDWACC=$(sed '25q;d'  $log1)
rDWMISS=$(sed '26q;d'  $log1)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '16q;d'  $log2)
rSTALL=$(sed '17q;d'  $log2)
rBUN=$(sed '18q;d'  $log2)
rSYL=$(sed '19q;d'  $log2)
rNOP=$(sed '20q;d'  $log2)
rIACC=$(sed '21q;d'  $log2)
rIMISS=$(sed '22q;d'  $log2)
rDRACC=$(sed '23q;d'  $log2)
rDRMISS=$(sed '24q;d'  $log2)
rDWACC=$(sed '25q;d'  $log2)
rDWMISS=$(sed '26q;d'  $log2)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '16q;d'  $log3)
rSTALL=$(sed '17q;d'  $log3)
rBUN=$(sed '18q;d'  $log3)
rSYL=$(sed '19q;d'  $log3)
rNOP=$(sed '20q;d'  $log3)
rIACC=$(sed '21q;d'  $log3)
rIMISS=$(sed '22q;d'  $log3)
rDRACC=$(sed '23q;d'  $log3)
rDRMISS=$(sed '24q;d'  $log3)
rDWACC=$(sed '25q;d'  $log3)
rDWMISS=$(sed '26q;d'  $log3)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers
echo "Core 0 (first C file)" >> numbers

rCYC=$(sed '30q;d'  $log2)
rSTALL=$(sed '31q;d'  $log2)
rBUN=$(sed '32q;d'  $log2)
rSYL=$(sed '33q;d'  $log2)
rNOP=$(sed '34q;d'  $log2)
rIACC=$(sed '35q;d'  $log2)
rIMISS=$(sed '36q;d'  $log2)
rDRACC=$(sed '37q;d'  $log2)
rDRMISS=$(sed '38q;d'  $log2)
rDWACC=$(sed '39q;d'  $log2)
rDWMISS=$(sed '40q;d'  $log2)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '30q;d'  $log2)
rSTALL=$(sed '31q;d'  $log2)
rBUN=$(sed '32q;d'  $log2)
rSYL=$(sed '33q;d'  $log2)
rNOP=$(sed '34q;d'  $log2)
rIACC=$(sed '35q;d'  $log2)
rIMISS=$(sed '36q;d'  $log2)
rDRACC=$(sed '37q;d'  $log2)
rDRMISS=$(sed '38q;d'  $log2)
rDWACC=$(sed '39q;d'  $log2)
rDWMISS=$(sed '40q;d'  $log2)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '30q;d'  $log3)
rSTALL=$(sed '31q;d'  $log3)
rBUN=$(sed '32q;d'  $log3)
rSYL=$(sed '33q;d'  $log3)
rNOP=$(sed '34q;d'  $log3)
rIACC=$(sed '35q;d'  $log3)
rIMISS=$(sed '36q;d'  $log3)
rDRACC=$(sed '37q;d'  $log3)
rDRMISS=$(sed '38q;d'  $log3)
rDWACC=$(sed '39q;d'  $log3)
rDWMISS=$(sed '40q;d'  $log3)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers
echo "CORE 0 (second C file)" >> numbers 

rCYC=$(sed '44q;d'  $log1)
rSTALL=$(sed '45q;d'  $log1)
rBUN=$(sed '46q;d'  $log1)
rSYL=$(sed '47q;d'  $log1)
rNOP=$(sed '48q;d'  $log1)
rIACC=$(sed '49q;d'  $log1)
rIMISS=$(sed '50q;d'  $log1)
rDRACC=$(sed '51q;d'  $log1)
rDRMISS=$(sed '52q;d'  $log1)
rDWACC=$(sed '53q;d'  $log1)
rDWMISS=$(sed '54q;d'  $log1)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '44q;d'  $log2)
rSTALL=$(sed '45q;d'  $log2)
rBUN=$(sed '46q;d'  $log2)
rSYL=$(sed '47q;d'  $log2)
rNOP=$(sed '48q;d'  $log2)
rIACC=$(sed '49q;d'  $log2)
rIMISS=$(sed '50q;d'  $log2)
rDRACC=$(sed '51q;d'  $log2)
rDRMISS=$(sed '52q;d'  $log2)
rDWACC=$(sed '53q;d'  $log2)
rDWMISS=$(sed '54q;d'  $log2)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '44q;d'  $log3)
rSTALL=$(sed '45q;d'  $log3)
rBUN=$(sed '46q;d'  $log3)
rSYL=$(sed '47q;d'  $log3)
rNOP=$(sed '48q;d'  $log3)
rIACC=$(sed '49q;d'  $log3)
rIMISS=$(sed '50q;d'  $log3)
rDRACC=$(sed '51q;d'  $log3)
rDRMISS=$(sed '52q;d'  $log3)
rDWACC=$(sed '53q;d'  $log3)
rDWMISS=$(sed '54q;d'  $log3)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers
echo "CORE 0 (third C file)" >> numbers 
#------------------------------------------------------------ core 1

log1="run1-core1.log"
log2="run2-core1.log"
log3="run3-core1.log"

rCYC=$(sed '16q;d'  $log1)
rSTALL=$(sed '17q;d'  $log1)
rBUN=$(sed '18q;d'  $log1)
rSYL=$(sed '19q;d'  $log1)
rNOP=$(sed '20q;d'  $log1)
rIACC=$(sed '21q;d'  $log1)
rIMISS=$(sed '22q;d'  $log1)
rDRACC=$(sed '23q;d'  $log1)
rDRMISS=$(sed '24q;d'  $log1)
rDWACC=$(sed '25q;d'  $log1)
rDWMISS=$(sed '26q;d'  $log1)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '16q;d'  $log2)
rSTALL=$(sed '17q;d'  $log2)
rBUN=$(sed '18q;d'  $log2)
rSYL=$(sed '19q;d'  $log2)
rNOP=$(sed '20q;d'  $log2)
rIACC=$(sed '21q;d'  $log2)
rIMISS=$(sed '22q;d'  $log2)
rDRACC=$(sed '23q;d'  $log2)
rDRMISS=$(sed '24q;d'  $log2)
rDWACC=$(sed '25q;d'  $log2)
rDWMISS=$(sed '26q;d'  $log2)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '16q;d'  $log3)
rSTALL=$(sed '17q;d'  $log3)
rBUN=$(sed '18q;d'  $log3)
rSYL=$(sed '19q;d'  $log3)
rNOP=$(sed '20q;d'  $log3)
rIACC=$(sed '21q;d'  $log3)
rIMISS=$(sed '22q;d'  $log3)
rDRACC=$(sed '23q;d'  $log3)
rDRMISS=$(sed '24q;d'  $log3)
rDWACC=$(sed '25q;d'  $log3)
rDWMISS=$(sed '26q;d'  $log3)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers
echo "Core 1 (first C file)" >> numbers

rCYC=$(sed '30q;d'  $log2)
rSTALL=$(sed '31q;d'  $log2)
rBUN=$(sed '32q;d'  $log2)
rSYL=$(sed '33q;d'  $log2)
rNOP=$(sed '34q;d'  $log2)
rIACC=$(sed '35q;d'  $log2)
rIMISS=$(sed '36q;d'  $log2)
rDRACC=$(sed '37q;d'  $log2)
rDRMISS=$(sed '38q;d'  $log2)
rDWACC=$(sed '39q;d'  $log2)
rDWMISS=$(sed '40q;d'  $log2)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '30q;d'  $log2)
rSTALL=$(sed '31q;d'  $log2)
rBUN=$(sed '32q;d'  $log2)
rSYL=$(sed '33q;d'  $log2)
rNOP=$(sed '34q;d'  $log2)
rIACC=$(sed '35q;d'  $log2)
rIMISS=$(sed '36q;d'  $log2)
rDRACC=$(sed '37q;d'  $log2)
rDRMISS=$(sed '38q;d'  $log2)
rDWACC=$(sed '39q;d'  $log2)
rDWMISS=$(sed '40q;d'  $log2)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '30q;d'  $log3)
rSTALL=$(sed '31q;d'  $log3)
rBUN=$(sed '32q;d'  $log3)
rSYL=$(sed '33q;d'  $log3)
rNOP=$(sed '34q;d'  $log3)
rIACC=$(sed '35q;d'  $log3)
rIMISS=$(sed '36q;d'  $log3)
rDRACC=$(sed '37q;d'  $log3)
rDRMISS=$(sed '38q;d'  $log3)
rDWACC=$(sed '39q;d'  $log3)
rDWMISS=$(sed '40q;d'  $log3)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers
echo "CORE 1 (second C file)" >> numbers 

rCYC=$(sed '44q;d'  $log1)
rSTALL=$(sed '45q;d'  $log1)
rBUN=$(sed '46q;d'  $log1)
rSYL=$(sed '47q;d'  $log1)
rNOP=$(sed '48q;d'  $log1)
rIACC=$(sed '49q;d'  $log1)
rIMISS=$(sed '50q;d'  $log1)
rDRACC=$(sed '51q;d'  $log1)
rDRMISS=$(sed '52q;d'  $log1)
rDWACC=$(sed '53q;d'  $log1)
rDWMISS=$(sed '54q;d'  $log1)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '44q;d'  $log2)
rSTALL=$(sed '45q;d'  $log2)
rBUN=$(sed '46q;d'  $log2)
rSYL=$(sed '47q;d'  $log2)
rNOP=$(sed '48q;d'  $log2)
rIACC=$(sed '49q;d'  $log2)
rIMISS=$(sed '50q;d'  $log2)
rDRACC=$(sed '51q;d'  $log2)
rDRMISS=$(sed '52q;d'  $log2)
rDWACC=$(sed '53q;d'  $log2)
rDWMISS=$(sed '54q;d'  $log2)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '44q;d'  $log3)
rSTALL=$(sed '45q;d'  $log3)
rBUN=$(sed '46q;d'  $log3)
rSYL=$(sed '47q;d'  $log3)
rNOP=$(sed '48q;d'  $log3)
rIACC=$(sed '49q;d'  $log3)
rIMISS=$(sed '50q;d'  $log3)
rDRACC=$(sed '51q;d'  $log3)
rDRMISS=$(sed '52q;d'  $log3)
rDWACC=$(sed '53q;d'  $log3)
rDWMISS=$(sed '54q;d'  $log3)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers
echo "CORE 1 (third C file)" >> numbers 

# CORE 2 ------------------------------------------------------------------

log1="run1-core2.log"
log2="run2-core2.log"
log3="run3-core2.log"

rCYC=$(sed '16q;d'  $log1)
rSTALL=$(sed '17q;d'  $log1)
rBUN=$(sed '18q;d'  $log1)
rSYL=$(sed '19q;d'  $log1)
rNOP=$(sed '20q;d'  $log1)
rIACC=$(sed '21q;d'  $log1)
rIMISS=$(sed '22q;d'  $log1)
rDRACC=$(sed '23q;d'  $log1)
rDRMISS=$(sed '24q;d'  $log1)
rDWACC=$(sed '25q;d'  $log1)
rDWMISS=$(sed '26q;d'  $log1)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '16q;d'  $log2)
rSTALL=$(sed '17q;d'  $log2)
rBUN=$(sed '18q;d'  $log2)
rSYL=$(sed '19q;d'  $log2)
rNOP=$(sed '20q;d'  $log2)
rIACC=$(sed '21q;d'  $log2)
rIMISS=$(sed '22q;d'  $log2)
rDRACC=$(sed '23q;d'  $log2)
rDRMISS=$(sed '24q;d'  $log2)
rDWACC=$(sed '25q;d'  $log2)
rDWMISS=$(sed '26q;d'  $log2)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '16q;d'  $log3)
rSTALL=$(sed '17q;d'  $log3)
rBUN=$(sed '18q;d'  $log3)
rSYL=$(sed '19q;d'  $log3)
rNOP=$(sed '20q;d'  $log3)
rIACC=$(sed '21q;d'  $log3)
rIMISS=$(sed '22q;d'  $log3)
rDRACC=$(sed '23q;d'  $log3)
rDRMISS=$(sed '24q;d'  $log3)
rDWACC=$(sed '25q;d'  $log3)
rDWMISS=$(sed '26q;d'  $log3)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers
echo "Core 2 (first C file)" >> numbers

rCYC=$(sed '30q;d'  $log2)
rSTALL=$(sed '31q;d'  $log2)
rBUN=$(sed '32q;d'  $log2)
rSYL=$(sed '33q;d'  $log2)
rNOP=$(sed '34q;d'  $log2)
rIACC=$(sed '35q;d'  $log2)
rIMISS=$(sed '36q;d'  $log2)
rDRACC=$(sed '37q;d'  $log2)
rDRMISS=$(sed '38q;d'  $log2)
rDWACC=$(sed '39q;d'  $log2)
rDWMISS=$(sed '40q;d'  $log2)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '30q;d'  $log2)
rSTALL=$(sed '31q;d'  $log2)
rBUN=$(sed '32q;d'  $log2)
rSYL=$(sed '33q;d'  $log2)
rNOP=$(sed '34q;d'  $log2)
rIACC=$(sed '35q;d'  $log2)
rIMISS=$(sed '36q;d'  $log2)
rDRACC=$(sed '37q;d'  $log2)
rDRMISS=$(sed '38q;d'  $log2)
rDWACC=$(sed '39q;d'  $log2)
rDWMISS=$(sed '40q;d'  $log2)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '30q;d'  $log3)
rSTALL=$(sed '31q;d'  $log3)
rBUN=$(sed '32q;d'  $log3)
rSYL=$(sed '33q;d'  $log3)
rNOP=$(sed '34q;d'  $log3)
rIACC=$(sed '35q;d'  $log3)
rIMISS=$(sed '36q;d'  $log3)
rDRACC=$(sed '37q;d'  $log3)
rDRMISS=$(sed '38q;d'  $log3)
rDWACC=$(sed '39q;d'  $log3)
rDWMISS=$(sed '40q;d'  $log3)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers
echo "CORE 2 (second C file)" >> numbers 

rCYC=$(sed '44q;d'  $log1)
rSTALL=$(sed '45q;d'  $log1)
rBUN=$(sed '46q;d'  $log1)
rSYL=$(sed '47q;d'  $log1)
rNOP=$(sed '48q;d'  $log1)
rIACC=$(sed '49q;d'  $log1)
rIMISS=$(sed '50q;d'  $log1)
rDRACC=$(sed '51q;d'  $log1)
rDRMISS=$(sed '52q;d'  $log1)
rDWACC=$(sed '53q;d'  $log1)
rDWMISS=$(sed '54q;d'  $log1)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '44q;d'  $log2)
rSTALL=$(sed '45q;d'  $log2)
rBUN=$(sed '46q;d'  $log2)
rSYL=$(sed '47q;d'  $log2)
rNOP=$(sed '48q;d'  $log2)
rIACC=$(sed '49q;d'  $log2)
rIMISS=$(sed '50q;d'  $log2)
rDRACC=$(sed '51q;d'  $log2)
rDRMISS=$(sed '52q;d'  $log2)
rDWACC=$(sed '53q;d'  $log2)
rDWMISS=$(sed '54q;d'  $log2)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers

rCYC=$(sed '44q;d'  $log3)
rSTALL=$(sed '45q;d'  $log3)
rBUN=$(sed '46q;d'  $log3)
rSYL=$(sed '47q;d'  $log3)
rNOP=$(sed '48q;d'  $log3)
rIACC=$(sed '49q;d'  $log3)
rIMISS=$(sed '50q;d'  $log3)
rDRACC=$(sed '51q;d'  $log3)
rDRMISS=$(sed '52q;d'  $log3)
rDWACC=$(sed '53q;d'  $log3)
rDWMISS=$(sed '54q;d'  $log3)

#Extract number
CYC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rCYC")
STALL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSTALL")
BUN=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rBUN")
SYL=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rSYL")
NOP=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rNOP")
IACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIACC")
IMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rIMISS")
DRACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRACC")
DRMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDRMISS")
DWACC=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWACC")
DWMISS=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rDWMISS")

echo $CYC $STALL $BUN $SYL $NOP $IACC $IMISS $DRACC $DRMISS $DWACC $DWMISS >> numbers
echo "CORE 2 (third C file)" >> numbers 