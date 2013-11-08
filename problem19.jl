#!/usr/bin/env julia
using Calendar

function find_sundays()
    start_date = ymd_hms(1901, 1, 1, 1, 1, 1)
    end_date = ymd_hms(2000, 12, 31, 1, 1, 1)
    return count(x->dayofweek(x)==1, start_date:months(1):end_date)
end

function main()
    println("The answer is $(find_sundays())")
end

@time main()
