public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int, next: ListNode?) {
         self.val = val
         self.next = next
     }
}

class Solution {
    // 两次遍历算法
//    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
//        var p = head
//        var s = head
//        let r = s
//        var i = 0
//        while p != nil {
//            p = p?.next
//            i += 1
//        }
//        if n == i {
//            s = s?.next
//            return s
//        }
//        while s != nil {
//            i -= 1
//            if i == n {
//                s?.next = s?.next?.next
//                return r
//            }
//            s = s?.next
//        }
//        return r
//    }
    
    // 一次遍历算法
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var frist = head
        var sencond = head
        var i = 0
        while frist != nil {
            if i > n {
                sencond = sencond?.next
            }
            frist = frist?.next
            i += 1
        }
        if sencond !== head {
            sencond?.next = sencond?.next?.next
        }
        return head
    }
}

let n = ListNode(1, next: ListNode(2, next: ListNode(3, next: nil)))
var node = Solution().removeNthFromEnd(n, 1)
while node != nil {
   print("====\(node!.val)")
   node = node?.next
}
