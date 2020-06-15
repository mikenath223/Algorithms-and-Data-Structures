PROBLEM:
Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

TEST_CASE:

Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].

SOLUTION

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  arr = []
  nums.each_with_index do |n, i|
    rem = target - n
    if nums[i+1..-1].include?(rem)
      arr << nums.index(n)
      return arr << nums[i+1..-1].index(rem) + i+1
    end
  end
  p ''
  arr
end
p two_sum([3,2,4], 6)
# [2,7,11,15]  9
# 2 - 9 = 7
# if 7 in nums find index of 7
# push index of 7 and 2 to empty arr

# Return [0, 1]