
#NEW CONFIG
NEWIssueWidthGLOBAL='7'
NEWMemLoad='7'
NEWMemStore='7'
NEWMemPft='1'

NEWIssueWidth='7'
NEWAlu='14'
NEWMpy='7'
NEWMemory='7'
NEWr0='40' 
NEWb0='4'

config="configuration.mm"

#Reference Performance
conv_ref=1739131
matrix_ref=651223

#Reference Area
refAreaALU=3273
refAreaMpy=40614
refAreaLWSW=1500
refAreaGR=26388
refAreaBR=258
refAreaCache=1000 
refTotalArea=72033

echo "Reference Performance Parameters" > evaluation
echo "Convolution_7x7:							$conv_ref" >> evaluation 
echo "Matrix: 									$matrix_ref" >> evaluation 

echo " ">> evaluation

echo "Reference Area Parameters" >> evaluation
echo "Total Area:							$refTotalArea" >> evaluation 
echo "Area: 	$refAreaALU	$refAreaMpy	$refAreaLWSW	$refAreaGR	$refAreaBR" >> evaluation 


#BOOKKEEPING
STRINGIssueWidthGLOBAL='RES: IssueWidth     '
STRINGMemLoad='RES: MemLoad        '
STRINGMemStore='RES: MemStore       '
STRINGMemPft='RES: MemPft         '

STRINGIssueWidth='RES: IssueWidth.0   '
STRINGAlu='RES: Alu.0          '
STRINGMpy='RES: Mpy.0          '
STRINGMemory='RES: Memory.0       '
STRINGr0='REG: $r0            '
STRINGb0='REG: $b0            '


#UPDATED CONFIG
UPDATEDIssueWidthGLOBAL="$STRINGIssueWidthGLOBAL$NEWIssueWidthGLOBAL"
UPDATEDMemLoad="$STRINGMemLoad$NEWMemLoad"
UPDATEDMemStore="$STRINGMemStore$NEWMemStore"
UPDATEDMemPft="$STRINGMemPft$NEWMemPft"

UPDATEDIssueWidth="$STRINGIssueWidth$NEWIssueWidth"
UPDATEDAlu="$STRINGAlu$NEWAlu"
UPDATEDMpy="$STRINGMpy$NEWMpy"
UPDATEDMemory="$STRINGMemory$NEWMemory"
UPDATEDr0="$STRINGr0$NEWr0"
UPDATEDb0="$STRINGb0$NEWb0"

#CONFIG PARAMETERS IN FILE
IssueWidthGLOBAL=$(sed '8q;d' $config)
MemLoad=$(sed '12q;d' $config)
MemStore=$(sed '13q;d' $config)
MemPft=$(sed '14q;d' $config)

IssueWidth=$(sed '32q;d' $config)
Alu=$(sed '36q;d' $config)
Mpy=$(sed '40q;d' $config)
Memory=$(sed '44q;d' $config)
r0=$(sed '58q;d' $config)
b0=$(sed '62q;d' $config)

#Change value of configuration file
#global
sed -i -e "s/$IssueWidthGLOBAL/$UPDATEDIssueWidthGLOBAL/g" $config
sed -i -e "s/$MemLoad/$UPDATEDMemLoad/g" $config
sed -i -e "s/$MemStore/$UPDATEDMemStore/g" $config
sed -i -e "s/$MemPft/$UPDATEDMemPft/g" $config
#cluster0
sed -i -e "s/$IssueWidth/$UPDATEDIssueWidth/g" $config
sed -i -e "s/$Alu/$UPDATEDAlu/g" $config
sed -i -e "s/$Mpy/$UPDATEDMpy/g" $config
sed -i -e "s/$Memory/$UPDATEDMemory/g" $config
sed -i -e "s/$r0/$UPDATEDr0/g" $config
sed -i -e "s/$b0/$UPDATEDb0/g" $config

#Area Calculations
AreaGR=$(((refAreaGR/64)*NEWr0*(NEWIssueWidth/4)*(NEWIssueWidth/4)))
AreaBR=$(((refAreaBR/8)*NEWb0*(NEWIssueWidth/4)*(NEWIssueWidth/4)))
AreaCache=$(((NEWMemLoad+NEWMemStore+NEWMemPft)*refAreaCache))
TotalArea=$(((NEWAlu*refAreaALU)+(NEWMpy*refAreaMpy)+(NEWMemory*refAreaLWSW)+(AreaGR)+(AreaBR)+(AreaCache)))

#Cache
#NEWMemLoad
#NEWMemStore
#NEWMemPft

echo "Running both scripts"

/home/user/workspace/tools/bin/run convolution_7x7 -O3
/home/user/workspace/tools/bin/run matrix -O3

log1="./output-convolution_7x7.c/ta.log.000"
log2="./output-matrix.c/ta.log.000"

echo "Combining Both logs into single log"
cat $log1 $log2 $config> combinedlog 

echo " ">> evaluation
echo " ---------------------------------------------------">> evaluation
echo " ">> evaluation

echo "Saving UPDATED Performance Parameters to evaluation"
echo "UPDATED Performance Parameters" >> evaluation
sed '2q;d' $log1 >> evaluation
sed '2q;d' $log2 >> evaluation

#Extract 2nd line from logfile
rawPerf1=$(sed '2q;d'  $log1)
rawPerf2=$(sed '2q;d'  $log2)
#Extract number of execution cycles
Perf1=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rawPerf1")
Perf2=$(sed 's/^[^0-9]*\([0-9]\+\).*$/\1/' <<< "$rawPerf2")

NormPerf1=$(bc <<< "scale = 10; $Perf1/$conv_ref")
NormPerf2=$(bc <<< "scale = 10; $Perf2/$matrix_ref")

AppPerf=$(bc <<< "scale = 10; sqrt($NormPerf1*$NormPerf2)")
echo $AppPerf
echo "Application Performance 					$AppPerf" >> evaluation

echo " ">> evaluation

echo "Saving UPDATED Area Parameters to evaluation"
echo "UPDATED Area Parameters" >> evaluation
echo "Total Area:							$TotalArea" >> evaluation
echo "Cache Area:							$AreaCache" >> evaluation
