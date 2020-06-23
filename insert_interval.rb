LINK:
https://leetcode.com/problems/insert-interval/

PROBLEM STATEMENT:
Given a set of non-overlapping intervals, insert a new interval into the intervals (merge if necessary).

You may assume that the intervals were initially sorted according to their start times.

TEST CASE:

Input: intervals = [[1,3],[6,9]], newInterval = [2,5]
Output: [[1,5],[6,9]]

MY SOLUTION:

# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  return [new_interval] if intervals.length == 0
  
  i = 0
  while i < intervals.length
    break if intervals[i][0] > new_interval[0]
    i += 1
  end
  intervals.insert(i, new_interval)
  
  res = [intervals[0]]
  
  for e in intervals
    if e[0] <= res[-1][1]
      res[-1][1] = [res[-1][1], e[1]].max
    else
      res << e
    end
  end
  p res
    res
end

# Check the exact index to insert interval
# res = []
# Check for overlapping intervals and merge =>
# res[-1][1] >= interval[0] return max of both. 