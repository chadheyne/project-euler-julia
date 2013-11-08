#!/usr/bin/env julia


function total_lattice(grid_length::Integer=20)
    return div(factorial(BigInt(grid_length * 2)), factorial(BigInt(grid_length)) ^ 2)
end


function main()
    println("The answer is $(total_lattice())")
end

@time main()
