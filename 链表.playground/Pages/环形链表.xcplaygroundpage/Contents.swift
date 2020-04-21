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
    func hasCycle(_ head: ListNode?) -> Bool {
        var s = head
        var f = head?.next
        while s != nil {
            if s === f {
                return true
            }
            s = s?.next
            f = f?.next?.next
        }
        return false
    }
}

