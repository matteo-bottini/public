# firstDuplicate
#
# Note: Write a solution with O(n) time complexity and O(1) additional space complexity, since this is what you would be asked to do during a real interview.
#
# Given an array a that contains only numbers in the range from 1 to a.length, find the first duplicate number for which the second occurrence has the minimal index. In other words, if there are more than 1 duplicated numbers, return the number for which the second occurrence has a smaller index than the second occurrence of the other number does. If there are no such elements, return -1.
#
# Example
#
#     For a = [2, 3, 3, 1, 5, 2], the output should be
#     firstDuplicate(a) = 3.
#
#     There are 2 duplicates: numbers 2 and 3. The second occurrence of 3 has a smaller index than than second occurrence of 2 does, so the answer is 3.
#
#     For a = [2, 4, 3, 5, 1], the output should be
#     firstDuplicate(a) = -1.
#
# Input/Output
#
#     [execution time limit] 4 seconds (rb)
#
#     [input] array.integer a
#
#     Guaranteed constraints:
#     1 ≤ a.length ≤ 105,
#     1 ≤ a[i] ≤ a.length.
#
#     [output] integer
#
#     The element in a that occurs in the array more than once and has the minimal index for its second occurrence. If there are no such elements, return -1.
#
#
# def firstDuplicate(a)   #this times out
#   if a.uniq.length == a.length
#     return -1
#   else
#     a.map { |i| a.count(i)>1 }
#     a[0] == a[1] ? a[0] : a[2]
#   end
# end
def firstDuplicate(a)
   counts = []
   a.each do |value|
     return value if counts[value]
     counts[value] = true
   end
   -1
 end

firstDuplicate([1,4,4,2,3,3,4,4,4,2])
