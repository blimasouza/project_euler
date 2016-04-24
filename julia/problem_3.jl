#=
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=#

function largestPrimeFactor(x)
  if isprime(x)
    return x
  end
  listOfPrimes = filter(isprime, 1:round(Int64,sqrt(x)))
  for prime in reverse(listOfPrimes)
    if x % prime == 0
      return prime
    end
  end
end

@time println(largestPrimeFactor(13195))
@time println(largestPrimeFactor(600851475143))
