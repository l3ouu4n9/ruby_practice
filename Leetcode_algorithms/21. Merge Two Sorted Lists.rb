# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    return l1 || l2 unless l1 && l2
    
    l1, l2 = l2, l1 if l1.val > l2.val
    
    l3, l1 = l1, l1.next
    ptr = l3
    while l1 && l2
        if l1.val < l2.val
            ptr.next = l1
            l1 = l1.next
        else
            ptr.next = l2
            l2 = l2.next
        end
        ptr = ptr.next
    end
    
    ptr.next = l1 || l2
    
    return l3
end
