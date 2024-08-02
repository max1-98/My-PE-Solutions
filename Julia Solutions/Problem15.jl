# No coding needed for this problem. Change it to a counting problem:
# We have 20 D's, 20 R's. How many different 40 character words can you make with these letters:
# 40!/(20!)(20!)

# The difficulty of this problem is dealing with the large numbers, we can brute force this doing:
p1 = 1
p1 = big(p1)
p2 = 1
p2 = big(p2)

for i in 2:20
    global p1
    p1 *= i
end


for i in 2:40
    global p2
    p2 *= i
end
println(p2/(p1^2))

# Alternatively this is a more efficient method for calculating choose's:

function choose(n, k)
    if k == 0 
        return 1
    else
        return (n * choose(n - 1, k - 1)) / k
    end

end
println(choose(40,20))

# This recursive function utilises a well known choose identity
