#!/usr/bin/env julia


function largest_factor(number::Int64)
    maximum(factor(number))[1]
end

function main()
    println("The answer is $(largest_factor(600851475143))")
end

@time main()
