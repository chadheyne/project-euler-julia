
function largest_factor(number::Int64)
    maximum(factor(number))[1]
end

function main()
    println(largest_factor(600851475143))
end

println(@elapsed main())