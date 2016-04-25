#=
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
=#

# to see N primes we need to go up to ~ N log(N)
println(primes(105000)[10001])
