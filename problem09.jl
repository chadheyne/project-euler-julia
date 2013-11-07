#!/usr/bin/env julia


function special_pyth(target::Int)
    for i=1:target, j=1:target, k=1:target
        if i + j + k == 1000 && i <= j <= k && i ^ 2 + j ^ 2 == k ^2
            return (i, j, k), i * j * k
        end
    end
end


function main()
    println("The answer is $(special_pyth(1000))")
end

@time main()
