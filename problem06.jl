
function difference(min_num::Int32, max_num::Int32)
    return sum(min_num:max_num) ^ 2 - sum(map(x -> x ^ 2, min_num:max_num))
end

function main()
    println("The answer is: $(difference(1, 100))")
end

println(@elapsed main())
