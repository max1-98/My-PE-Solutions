"""
The primes 3, 7, 109, and 673, are quite remarkable. By taking any two primes and concatenating them in any order the result 
will always be prime. For example, taking 7 and 109, both 7109 and 1097 are prime. The sum of these four primes, 792, 
represents the lowest sum for a set of four primes with this property.

Find the lowest sum for a set of five primes for which any two primes concatenate to produce another prime.
"""

# Generate primes up till 10 million. 

# First we gen every prime
n = 10000000
check = [0]*n

for i in range(2):
	check[i] = 1

i = 1
primes = []
while i < n:
	if check[i] == 0:
		primes.append(i)
		k = i
		while k < n:

			check[k] = 1
			k += i
	i += 1
k = 1
link = []
while primes[k] < 1000:
	link.append([])
	k += 1

print("Done")
k = 1
while primes[k] < 1000:
	j = k+1
	p1 = primes[k]
	while primes[j] < 10000:

		p2 = primes[j]

		if k != j and (int(str(p1)+str(p2)) in primes and int(str(p2)+str(p1)) in primes):
			link[k].append(primes[j])

		j += 1

	k += 1

