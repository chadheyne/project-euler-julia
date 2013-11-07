#!/usr/bin/env julia


function difference(min_num::Int, max_num::Int)
    return sum(min_num:max_num) ^ 2 - sum(map(x -> x ^ 2, min_num:max_num))
end

function main()
    println("The answer is: $(difference(1, 100))")
end

@time main()
