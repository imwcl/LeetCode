//: 给定一个有序整数数组，元素各不相同且按升序排列，编写一个算法，创建一棵高度最小的二叉搜索树。
//: 示例:
//: 给定有序数组: [-10,-3,0,5,9],
//: 一个可能的答案是：[0,-3,9,-10,null,5]，它可以表示下面这个高度平衡二叉搜索树：
//:           0
//:          / \
//:        -3   9
//:        /   /
//:      -10  5

 public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init(_ val: Int) {
         self.val = val
         self.left = nil
         self.right = nil
     }
 }

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    if nums.count == 0 {
        print("1" + "\(nums)")
        return nil
    }
    print("2" + "\(nums)")
    let index = nums.count / 2
    let value = nums[index]
    let root = TreeNode(value)
    root.left = sortedArrayToBST(Array(nums[0..<index]))
    root.right = sortedArrayToBST(Array(nums[index + 1..<nums.count]))
    return root
}

sortedArrayToBST([-10,-3,0,5,9])
