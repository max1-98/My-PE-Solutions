
n = 1
n = big(n)

for i in 1:1000
    global n
    n *= 2
end

n = string(n)

sum = 0
for s in n
    global sum
    s = parse(Int64,s)
    sum += s
end

print(sum)