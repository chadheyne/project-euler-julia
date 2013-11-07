#!/usr/bin/env julia


function fizzbuzz(limit::Int)
    return sum(filter((x) -> x % 3 == 0 || x % 5 == 0, 1:limit - 1))
end

function main()
    println("The answer is $(fizzbuzz(1000))")
end

@time main()
