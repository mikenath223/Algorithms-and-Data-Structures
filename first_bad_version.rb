LINK:
https://leetcode.com/explore/interview/card/top-interview-questions-easy/96/sorting-and-searching/774/

PROBLEM STATEMENT:
You are a product manager and currently leading a team to develop a new product. Unfortunately, the latest version of your product fails the quality check. Since each version is developed based on the previous version, all the versions after a bad version are also bad.

Suppose you have n versions [1, 2, ..., n] and you want to find out the first bad one, which causes all the following ones to be bad.

You are given an API bool isBadVersion(version) which will return whether version is bad. Implement a function to find the first bad version. You should minimize the number of calls to the API.

TEST CASE:

Given n = 5, and version = 4 is the first bad version.

call isBadVersion(3) -> false
call isBadVersion(5) -> true
call isBadVersion(4) -> true

Then 4 is the first bad version. 

SOLUTION:
# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  left = 1
  right = n
  
  while left < right
    mid = left + (right - left) / 2
    if is_bad_version(mid)
      right = mid
    else
      left = mid + 1
    end
  end
  left
end

# [1,2...n] 

# n => 9 - 8 - 7 - 6
# n => 1 - 2 - 3