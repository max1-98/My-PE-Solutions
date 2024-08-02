

n = 2000000
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

sum = 0
for p in primes
    global primes
    global sum
    sum += p
end

println(sum)