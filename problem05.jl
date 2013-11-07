#!/usr/bin/env julia


function divisible()
    return lcm([1:20]...)
end

function main()
    println("The answer is: $(divisible())")
end

@time main()
