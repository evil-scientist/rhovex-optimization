import os
import random
IW = random.randint(2, 18)
ALU = random.randint(1,14)
Mpy = random.randint(1, 14)
LDSR = random.randint(1, 10)
GR = random.randint(8, 40)
BR = random.randint(1, 4)
command = "./result.sh"+" "+str(IW)+" "+str(ALU)+" "+str(Mpy)+" "+str(LDSR)+" "+str(GR)+" "+str(BR) 
os.system(command)
#os.system("./result.sh 4 4 2 1 64 8")
text_file = open("evaluation", "r")
lines = text_file.read().split('\n')
appPerf = float(lines[0])
totalArea= float(lines[1])
print appPerf
print totalArea
text_file.close()