#!/usr/bin/env julia


function prime_sum(limit::Int)
    return sum(primes(limit))
end


function main()
    println("The answer is $(prime_sum(2000000))")
end


@time main()
