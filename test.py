import numpy as np
n = 3
Hessian = np.zeros((n,n))
theta = np.zeros((n,1))
Hessian[1,2] = 1
print(Hessian)
print(theta)
print(Hessian[1,2])