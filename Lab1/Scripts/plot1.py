import matplotlib.pyplot as plt

X, Y = [], []
Z=[]
for count,line in enumerate(open('datapoints', 'r')):
	if count % 2 == 1:
		values = [float(s) for s in line.split()]
		X.append(values[0])
	if count % 2 == 0:
		values = [float(s) for s in line.split()]
		Y.append(values[0])

#print(X[:10])
#print(Y[:10])
for i in range(len(X)):
	Z.append(X[i]*Y[i])

answer = min(Z)
place = Z.index(answer)
print('Lowest energy is: '+str(answer))
print('Optimal Point has Area: '+str(X[place]))
print('Optimal Point has Delay: '+str(Y[place]))

plt.title("Delay Area curve")
plt.plot(X, Y, 'ro', c='blue',ms='0.50',label='Design Space')
plt.xlabel("Area (units)")
plt.ylabel("Delay (Geometric Mean)")
plt.plot(X[place],Y[place],'bx', c='red',label='Pareto point')
plt.plot('125444','1','^', c='black',label='Reference')
#plt.scatter(X, Y, s=None, c=None, marker=None, cmap=None, norm=None, vmin=None, vmax=None, alpha=None)
plt.autoscale(enable=True, axis='both', tight=None)
plt.legend()
plt.show()