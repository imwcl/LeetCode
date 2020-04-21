 public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int, next: ListNode?) {
         self.val = val
         self.next = next
     }
}
 
class Solution {
    // 迭代
    func reverseList(_ head: ListNode?) -> ListNode? {
        var cur = head
        var pre: ListNode?
        while cur != nil {
            let nextTemp = cur?.next
            cur?.next = pre
            pre = cur
            cur = nextTemp
        }
        return pre
    }
}

let node = ListNode(1, next: ListNode(2, next: ListNode(3, next: nil)))
var p = Solution().reverseList(node)
 while p != nil {
    print("====\(p!.val)")
    p = p?.next
 }
