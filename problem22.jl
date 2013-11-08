#!/usr/bin/env julia

namescore(i, name) = i * sum(letter->int(letter)-int('A')+1, collect(name))

function get_names(data::String="data/names.txt")
    names = sort(map(x->replace(string(x), "\"", ""), split(open(readall, data), ",")))
    return sum((i) -> namescore(i[1], i[2]), enumerate(names))
end


function main()
    println("The answer is $(get_names())")
end

@time main()
