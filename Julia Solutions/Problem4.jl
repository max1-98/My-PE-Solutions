Found = false
i = 999
j = 999
# Largest palindrome possible formed through the product of two 
# 3 digit numbers would be 1000000
# there are only 1000 palindromes between 100000 and 1000000

palindromes = []

for i in 100:999
    global palindromes
    k = string(i)

    push!(palindromes,parse(Int64,k*reverse(k)))
    
end
sort!(palindromes,rev=true)

i = 1
while !Found
    global i
    global palindromes
    global Found
    for j in 100:999
        if (palindromes[i] % j == 0)&&(palindromes[i]/j < 1000)
            Found = true
            println(palindromes[i])
            println(j)
            println(palindromes[i]/j)
        end
    end
    i += 1
end