x1 = 1
x2 = 1
sum = 0

while x2 < 4000000
    global x1
    global x2
    global sum

    if x2 % 2 == 0
        sum += x2
    end
    x3 = x2
    x2 = x1 + x2
    x1 = x3

end 

println(sum)