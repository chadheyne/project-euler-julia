#!/usr/bin/env julia


function find_digits(target_power::Integer=1000)
    number = itrunc(BigFloat(exp2(target_power)))
    return mapreduce(x -> int(string(x)), +, string(number))
end

function main()
    println("The answer is $(find_digits())")
end

@time main()
