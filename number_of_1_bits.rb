LINK:
https://leetcode.com/problems/number-of-1-bits/

PROBLEM STATEMENT:
Write a function that takes an unsigned integer and 
return the number of '1' bits it has (also known as the Hamming weight).


TEST_CASE:
Input: 00000000000000000000000000001011
Output: 3
Explanation: The input binary string 00000000000000000000000000001011 has a total of three '1' bits.


MY SOLUTION
# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  n.to_s(2).split("").count('1')
end

# where n = 00000000000000000000000000001011
# puts n // 11 => int
# p n.to_s(2) // "00000000000000000000000000001011"
# p n.to_s(2).split("") // "["0"..."1", "0".."1"]"
# p n.to_s(2).split("").count("1") // 3