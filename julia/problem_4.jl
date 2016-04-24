#=
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=#

function palindromeQ(x)
  string(x) == reverse(string(x))
end

bigestPalindrome = 0
num1 = 0
num2 = 0
for i in 100:999, j in 100:999
  if palindromeQ(i * j) && (i * j) > bigestPalindrome
    bigestPalindrome = (i * j)
    num1 = i
    num2 = j
  end
end

println("$(num1) * $(num2) = $(bigestPalindrome), which is a palindrome!")
