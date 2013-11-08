#!/usr/bin/env julia


function readgrid(data::String="data/problem18.txt")
    grid = Dict()
    fstream = open(data)
    for line = 1:15
        row = readline(fstream)
        grid[line] = map(x->int(string(x)), split(row, ' '))
    end
    return grid
end


function maxpath()
    grid = readgrid()
    for i=length(grid)-1:-1:1, j=1:i
        grid[i][j] += maximum([grid[i+1][j], grid[i+1][j+1]])
    end
    return grid[1][1]
end


function main()
    println("The answer is $(maxpath())")
end

@time main()
