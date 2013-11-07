
function find_prime(target::Int32)
    num_primes, current_number = 0, 0
    while true
        if isprime(current_number)
            num_primes += 1
            if num_primes == target
                return current_number
            end
        end
        current_number += 1
    end
end

function main()
    println("The answer is $(find_prime(10001))")
end

println(@elapsed main())
