//: 给你一个单链表的引用结点 head。链表中每个结点的值不是 0 就是 1。已知此链表是一个整数数字的二进制表示形式。

//: 请你返回该链表所表示数字的 十进制值 。
//: 示例 1：
//: 输入：head = [1,0,1]
//: 输出：5
//: 解释：二进制数 (101) 转化为十进制数 (5)
//: 示例 2：
//: 输入：head = [0]
//: 输出：0
//: 示例 3：
//: 输入：head = [1]
//: 输出：1
//: 示例 4：
//: 输入：head = [1,0,0,1,0,0,1,1,1,0,0,0,0,0,0]
//: 输出：18880
//: 示例 5：
//: 输入：head = [0,0]
//: 输出：0
//: 提示：
//: 链表不为空。
//: 链表的结点总数不超过 30。
//: 每个结点的值不是 0 就是 1。

public class ListNode {
 public var val: Int
 public var next: ListNode?
 public init(_ val: Int) {
     self.val = val
     self.next = nil
 }
}

let one = ListNode(1)
let two = ListNode(0)
let three = ListNode(1)
two.next = three
one.next = two
 
func getDecimalValue(_ head: ListNode?) -> Int {
    var h = head
    var result = 0
    repeat {
        result = result * 2 + (h?.val ?? 0)
        h = h?.next
    } while h != nil
    return result
}

getDecimalValue(one)

