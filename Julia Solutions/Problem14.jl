# Longest collatz sequence under 1 million
# Note we can ignore numbers from 0 to 500,000 as 2 times that number will be longer

function CollatzLength(n)
    count = 0
    while n != 1
        if n % 2 == 0
            n = n/2
        else
            n = 3*n+1
        end
        count += 1
    end
    return count
end

# Even just ignoring the first 500,000 numbers we still have a lot to iterate through. We need to think about
# what numbers will be covered, ie. they came from a number lower than them. This is clearly all the numbers 1 mod 3.
# So we have reduced the number of numbers to look at to those that are 0 or 2 mod 3 and between 500,000 and 1,000,000

store = 0
for i in 166666:333335
    global store
    global store1
    s = CollatzLength(3*i)
    if s > store
        store = s
        store1 = 3*i
    end

    s = CollatzLength(3*i+2)
    if s > store
        store = s
        store1 = 3*i+2
    end

    s = CollatzLength(3*i+1)
    if s > store
        store = s
        store1 = 3*i+1
    end

end
println(store1)
print(CollatzLength(store1))