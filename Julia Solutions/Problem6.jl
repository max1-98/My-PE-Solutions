s = 0
s1 = 0
for i in 1:100
    global s
    global s1
    s += i
    s1 += i^2 
end

println(s^2-s1)