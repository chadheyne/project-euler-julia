#!/usr/bin/env julia


function generate_fibonacci(limit::Int)
    a, b = 0, 1
    while a <= limit
        if iseven(a)
            produce(a)
        end
        a, b = b, a + b
    end
end

function main()
    fibonacci = Task(() -> generate_fibonacci(4000000))
    println("The answer is $(sum(fibonacci))")
end

@time main()
