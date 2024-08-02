# We will create a function for creating a number that is divisible by
# every number from 1 to n
# We are effectively trying to calculate:
# LCM(2,3,4,...,n)
# NOTE: LCM(a,b)= (a x b)/GCD(a,b)
# We can calculate the GCD efficiently using Euclid's algorithm

function gcd(a,b)
    # Makes sure a > b
    if b > a
        b1 = a
        a = b
        b = b1
    end

    r = 1
    while !(r==0)
        r = a % b
        a = b
        b = r
    end

    return a
end 

function divbyallk(n)
    s = 2
    for i in 3:n
        s = floor(s*i/gcd(s,i))
    end
    return floor(s)
end 
print(divbyallk(20))


