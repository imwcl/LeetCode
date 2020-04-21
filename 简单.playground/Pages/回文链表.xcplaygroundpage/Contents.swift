//: 请判断一个链表是否为回文链表。
//: 示例 1:
//: 输入: 1->2
//: 输出: false
//: 示例 2:
//: 输入: 1->2->2->1
//: 输出: true
//: 进阶：
//: 你能否用 O(n) 时间复杂度和 O(1) 空间复杂度解决此题？


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    
    func isPalindrome(_ head: ListNode?) -> Bool {
        var flag = false
        var step = head
        var h = head
        var mid = head
        var i = 0
        while step?.next?.next != nil {
            mid = head?.next
            step = step?.next?.next
        }
        while h?.next != nil {
            h = h?.next
            i += 1
        }
        return flag
    }
    
}

let one = ListNode(1)
let two = ListNode(2)
let three = ListNode(3)
let four = ListNode(4)
let five = ListNode(5)
one.next = two
two.next = three
three.next = four
four.next = five

Solution().isPalindrome(one)
