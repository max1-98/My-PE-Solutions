t = 600851475143

# prime finder

# primes up to
n = 1000000
check = zeros(n,1)
primes = [2]
i = 3
while i < n
    global i
    global check
    global primes
    if check[i] == 0
        push!(primes,i)
        k = i
        while k < n
            check[k] = 1
            k += i
        end
    end 

    i += 2
end

# Now we have our prime list, we go through the primes checking if it divides t, 
# if it does then we divide the number by it until we have 1

i = 1
while t != 1
    global t
    global primes
    global i
    prime = primes[i]
    if t % prime == 0
        t = t/prime
    end
    i +=1
end
println(primes[i-1])