
palindrome(s) = s == reverse(s)

function generate_palindrome(start::Int32)
    ! (100 <= start <= 999) && return
    pal_index = findfirst(palindrome, map(x -> "$(x * start)", 100:999))
    if pal_index != 0
        pal = getindex(100:999, pal_index)
        produce(pal * start, pal, start)
    end
    return generate_palindrome(start - 1)
end


function main()
    palindromes = Task(() -> generate_palindrome(999))
    println(maximum(palindromes))
end

println(@elapsed main())
println(@elapsed main())
