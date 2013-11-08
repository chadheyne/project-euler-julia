#!/usr/bin/env julia

find_factors(n) = sum(filter(x->n%x==0, 1:div(n, 2) + 1))
amicable(n) = (result=find_factors(n); n!= result && find_factors(result) == n ? result : 0)

function find_amicable(limit::Integer=10000)
    seen = Dict{Int, Int}()
    for number=1:limit-1
        if !haskey(seen, number)
            result = amicable(number)
            seen[number] = result
            if result > 0
                seen[result] = number
            end
        end
    end
    return sum(values(seen))
end

function main()
    println("The answer is $(find_amicable())")
end

@time main()
