

num = readlines("Problem13.txt")
sum = 0

for i in 1:100
    global sum
    global num
    sum += parse(BigInt,num[i])
end
sum = string(sum)
println(sum[1:10])