"""
By replacing the 1st digit of the 2-digit number *3, it turns out that six of the nine possible values: 13, 23, 43, 53, 73, and 83, 
are all prime.

By replacing the 3rd and 4th digits of 56**3 with the same digit, this 5-digit number is the first example having seven primes among 
the ten generated numbers, yielding the family: 56003, 56113, 56333, 56443, 56663, 56773, and 56993. Consequently 56003, being the 
first member of this family, is the smallest prime with this property.

Find the smallest prime which, by replacing part of the number (not necessarily adjacent digits) with the same digit, is part of an 
eight prime value family.
"""




# We want to design a way where it looks at the first number, then adds the index where this number appears to the list. 
def decomp(p):
	
	d1 = []
	for i in range(10):
		d1.append([])
	p = str(p)
	for k in range(len(p)):
		d1[int(p[k])].append(k)

	return d1



# First we gen every prime
n = 1000000
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

k = 0

while k < len(primes):

	p = primes[k]
	d2 = decomp(p)
	for i in range(10):
		if len(d2[i])>2:
			ind = d2[i]
			m = 0
			ps = []
			for j in range(10):
				ind = d2[i]
				text = str(p)

				text = text[:ind[0]]+str(j)+text[ind[0]+1:ind[1]]+str(j)+text[ind[1]+1:ind[2]]+str(j)+text[ind[2]+1:]


				p1 = int(text)
				if p1 in primes:
					m += 1
					ps.append(p1)

			if m >= 8:

				print(p)
				print(ind)
				print(ps)

	k += 1 
