#!/usr/bin/env julia


function get_matrix(filename::String)
    data = readdlm(filename, ' ', Int64)
    for i=1:17, j=1:17
        produce(prod(data[i:i+3]))
        produce(prod(rotr90(data)[i:i+3]))
        produce(prod([data[i+n,j+n] for n=0:3]))
        produce(prod([data[i+3-n,j+n] for n=0:3]))
    end

end


function main()
    t = Task(() -> get_matrix("data/problem11.txt"))
    println("The answer is $(maximum(t))")
end

@time main()
