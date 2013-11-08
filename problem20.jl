#!/usr/bin/env julia

function solveit(target::Integer=100)
    return sum(x->int(x)-48, string(factorial(BigInt(target))))
end

function main()
    println("The answer is $(solveit())")
end

@time main()
