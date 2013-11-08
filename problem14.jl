#!/usr/bin/env julia

function calculate_collatz(number::Integer)
    total, initial = 1, convert(Int64, number)
    while initial > 1
        initial = initial % 2 == 0 ? convert(Int64, div(initial, 2)) : convert(Int64, 3 * initial + 1)
        total += 1
    end
    return total, number
end

function find_collatz(limit::Int)
    return maximum(map(calculate_collatz, 1:limit))
end


function main()
    println("The answer is $(find_collatz(1000000))")
end

@time main()
