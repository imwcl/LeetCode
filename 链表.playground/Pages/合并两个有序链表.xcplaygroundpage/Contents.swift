public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int, next: ListNode?) {
         self.val = val
         self.next = next
     }
}

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1
        var l2 = l2
        // 哨兵节点
        let headNode = ListNode(-1, next: nil)
        var pre: ListNode? = headNode
        while l1 != nil && l2 != nil  {
            if l1?.val ?? Int.min > l2?.val ?? Int.min {
                pre?.next = l2
                l2 = l2?.next
            } else {
                pre?.next = l1
                l1 = l1?.next
            }
            pre = pre?.next
        }
        pre?.next = l1 == nil ? l2 : l1;
        return headNode.next
    }
}

let node1 = ListNode(1, next: ListNode(2, next: ListNode(4, next: nil)))

let node2 = ListNode(1, next: ListNode(3, next: ListNode(4, next: nil)))

var node3 = Solution().mergeTwoLists(node1, node2)

while node3 != nil {
   print("====\(node3!.val)")
   node3 = node3?.next
}
