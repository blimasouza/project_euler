#=
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=#

function pythagorean_tripletQ(a::Integer, b::Integer, c::Integer)
  triplet = sort([a, b, c])
  return (triplet[1]^2 + triplet[2]^2 == triplet[3]^2)
end

function problem_9(n::Integer)
  res = []
  for a in 1:(n-1), b in 1:(a-1)
    if pythagorean_tripletQ(a,b,n-a-b) && (a > b > (n - a - b) > 0)
      println("a = $(n - a - b), b = $b, c = $a")
      println("$((n - a - b)^2) + $(b^2) = $(a^2)")
      println("abc = $(a*b*(n - a - b))")
      println("------------------------")
    end
  end
end

problem_9(1000)
