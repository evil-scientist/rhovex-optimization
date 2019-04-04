from __future__ import print_function
import os
import math
import random
from simanneal import Annealer

class DSEOptimization(Annealer):

	"""Test annealer with a travelling salesman problem.
	"""

	def __init__(self, state):
		super(DSEOptimization, self).__init__(state)  # important!

	def move(self):
		"""Change all config parameters"""
		IW = random.randint(2, 20)
		ALU = random.randint(4,(2*IW))
		Mpy = random.randint(2, IW)
		LDSR = random.randint(1, IW)
		GR = random.randint(8, 40)
		BR = random.randint(1, 4)
		command = "./result.sh"+" "+str(IW)+" "+str(ALU)+" "+str(Mpy)+" "+str(LDSR)+" "+str(GR)+" "+str(BR) 
		os.system(command)
		#os.system("./result.sh 4 4 2 1 64 8")	
		self.state[0] = IW
		self.state[1] = ALU
		self.state[2] = Mpy
		self.state[3] = LDSR
		self.state[4] = GR
		self.state[5] = BR


	def energy(self):
		"""This is my objective function: Need to minimize this"""
		e = 0
		text_file = open("evaluation", "r")
		lines = text_file.read().split('\n')
		appPerf = float(lines[0])
		totalArea= float(lines[1])
		#print appPerf
		#print totalArea
		text_file.close()
		e = appPerf*totalArea
		return e



if __name__ == '__main__':

	# initial state, state of reference arch
	init_state = [4,4,2,1,64,8]
	os.system("./result.sh 4 4 2 1 64 8")
	
	tsp = DSEOptimization(init_state)
	tsp.steps = 50000
	
	# since our state is just a list, slice is the fastest way to copy
	tsp.copy_strategy = "slice"
	#auto_schedule = tsp.auto(minutes=1) 
	# {'tmin': ..., 'tmax': ..., 'steps': ...}
	#tsp.set_schedule(auto_schedule)
	tsp.Tmax = 34557230.0
	state, e = tsp.anneal()

	#while state[0] != 'New York City':
	#	state = state[1:] + state[:1]  # rotate NYC to start

	print()
	print("This is the final energy: %i" % e)
	for parameter in state:
		print("\t", parameter)
