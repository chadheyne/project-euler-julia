#!/usr/bin/env julia


function bigdata(file::String)
    fstream = open(file)
    numbers = map(BigInt, readlines(fstream))
    return BigInt(string(sum(numbers))[1:10])
end


function main()
    println("The answer is $(bigdata("data/problem12.txt"))")
end

@time main()
