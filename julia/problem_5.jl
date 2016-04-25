#=
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=#

# given an integer n, returns a dictionary with its prime factors being the keys
# and the values being the multiplicity of the associated prime.
function prime_factors(n::Integer)
  myprimes = primes(n)
  res = Dict()
  for prime in myprimes
    num = n
    count = 0
    while num % prime == 0
      num = div(num, prime)
      count += 1
      res[prime] = count
    end
  end
  return res
end

function my_merge(d1::Dict, d2::Dict)
  keysd1 = keys(d1)
  keysd2 = keys(d2)
  mykeys = union(keysd1, keysd2)
  res = Dict()
  for key in mykeys
    if (key in keysd1) && !(key in keysd2)
      res[key] = d1[key]
    elseif (key in keysd2) && !(key in keysd1)
      res[key] = d2[key]
    else
      d1[key] > d2[key] ? res[key] = d1[key] : res[key] = d2[key]
    end
  end
  return res
end

##########################
# Andre's merge function #
##########################
# function merge_dicts(d1, d2)
#     d = copy(d1) # there is a problem with copy here
#     for key in keys(d2)
#         d[key] = haskey(d1, key) ? max(d1[key], d2[key]) : d2[key]
#     end
# end

function from_prime_factors(d::Dict)
  ks = collect(keys(d))
  vs = collect(values(d))
  res = 1
  for i in 1:length(ks)
    res *= ks[i]^(vs[i])
  end
  return res
end

function problem_5(n::Integer)
  res_primes = Dict()
  for i in 2:n
    res_primes = my_merge(res_primes,prime_factors(i))
  end
  println(from_prime_factors(res_primes))
end

problem_5(20)
