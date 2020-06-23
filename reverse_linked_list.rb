LINK:
https://leetcode.com/problems/reverse-linked-list/

PROBLEM STATEMENT:
Reverse a singly linked list.

TEST CASE:

Input: 1->2->3->4->5->NULL
Output: 5->4->3->2->1->NULL

MY SOLUTION:
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  return nil if head.nil?
  prev = nil
  curr = head
  
  while(curr != nil)
    temp = curr.next
    curr.next = prev
    prev = curr
    curr = temp
  end
  head = prev
  head
end

# prev = nil
# curr = head
# loop breaks when curr == nil
# temp = curr.next
# prev = curr