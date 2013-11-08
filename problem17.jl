#!/usr/bin/env julia
FORMATTER = Dict{Integer, String}()
FORMATTER[1000] = "onethousand"
FORMATTER[0] = ""
FORMATTER[1] = "one"
FORMATTER[2] = "two"
FORMATTER[3] = "three"
FORMATTER[4] = "four"
FORMATTER[5] = "five"
FORMATTER[6] = "six"
FORMATTER[7] = "seven"
FORMATTER[8] = "eight"
FORMATTER[9] = "nine"
FORMATTER[10] = "ten"
FORMATTER[20] = "twenty"
FORMATTER[30] = "thirty"
FORMATTER[40] = "forty"
FORMATTER[50] = "fifty"
FORMATTER[60] = "sixty"
FORMATTER[70] = "seventy"
FORMATTER[80] = "eighty"
FORMATTER[90] = "ninety"
FORMATTER[11] = "eleven"
FORMATTER[12] = "twelve"
FORMATTER[13] = "thirteen"
FORMATTER[14] = "fourteen"
FORMATTER[15] = "fifteen"
FORMATTER[16] = "sixteen"
FORMATTER[17] = "seventeen"
FORMATTER[18] = "eighteen"
FORMATTER[19] = "nineteen"
for i=100:100:900
    FORMATTER[i] = FORMATTER[div(i, 100)] * "hundred"
end

function count_letters(maxnum::Integer=1000)
    totalcount = 0
    for number=1:maxnum
        hundreds, tens = divrem(number, 100)
        totalcount += length(FORMATTER[hundreds * 100])
        if hundreds > 0 && tens > 0
            totalcount += 3
        end
        if haskey(FORMATTER, tens)
            totalcount += length(FORMATTER[tens])
        else
            tens, ones = divrem(tens, 10)
            totalcount += length(FORMATTER[tens * 10])
            totalcount += length(FORMATTER[ones])
        end
    end
    return totalcount
end


function main()
    println("The answer is $(count_letters())")
end

@time main()
