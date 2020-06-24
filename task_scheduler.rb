PROBLEM STATEMENT:

You are given a char array representing tasks CPU need to do. It contains capital letters A to Z where each letter represents a different task. Tasks could be done without the original order of the array. Each task is done in one unit of time. For each unit of time, the CPU could complete either one task or just be idle.

  However, there is a non-negative integer n that represents the cooldown period between two same tasks (the same letter in the array), that is that there must be at least n units of time between any two same tasks.
  
  You need to return the least number of units of times that the CPU will take to finish all the given tasks.
  
  
  
TEST CASE:
  
  Input: tasks = ["A","A","A","B","B","B"], n = 2
  Output: 8
  Explanation: 
  A -> B -> idle -> A -> B -> idle -> A -> B
  There is at least 2 units of time between any two same tasks.

SOLUTION:

# @param {Character[]} tasks
# @param {Integer} n
# @return {Integer}
def least_interval(tasks, n)
  counts = get_counts_of_tasks(tasks)
  p counts
  time = 0
  while (counts[0] > 0)
    i = 0
    while (i <= n)
      break if counts[0] == 0
      if (i < counts.length && counts[i] > 0)
        counts[i] -= 1
      end
      time += 1
      i += 1
    end
    counts.sort! {|x,y| -(x <=> y)}
  end
  
  p time
end

def get_counts_of_tasks(tasks)
  count = {}
  tasks.each do |t|
    count[t] ||= 0
    count[t] += 1
  end
  count.values.sort {|x,y| -x <=> y }
end


p least_interval(["A","A","A","A","A","A","B","C","D","E","F","G"], 2)
# get_count_of_tasks => array [0,0,0,0,1]
# loop count[0] > 0
# inner loop i <= n
# count.sort

# ['A','B','A','B']
