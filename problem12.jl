#!/usr/bin/env julia


function find_factors(number::Int)
    return 2 * count(x -> number % x == 0, 1:int(sqrt(number)))
end

function get_number(target::Int)
    start, counter = 0::Int, 1::Int
    while true
        start, counter = start + counter, counter + 1
        if find_factors(start) >= target
            return start
        end
    end
end


function main()
    println("The answer is $(get_number(500))")
end

@time main()
