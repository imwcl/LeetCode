//: 编写一个函数来查找字符串数组中的最长公共前缀。
//: 如果不存在公共前缀，返回空字符串 ""。
//: 示例 1:
//: 输入: ["flower","flow","flight"]
//: 输出: "fl"
//: 示例 2:
//: 输入: ["dog","racecar","car"]
//: 输出: ""
//: 解释: 输入不存在公共前缀。
//: 说明:
//: 所有输入只包含小写字母 a-z 。

// 水平扫描法
func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.count == 0 {
        return ""
    }
    var prefix = strs[0]
    for s in strs {
        while !s.hasPrefix(prefix) {
            prefix = String(prefix.prefix(prefix.count - 1))
        }
    }
    return prefix
}

longestCommonPrefix(["flower","flow","flight"])
longestCommonPrefix(["dog","racecar","car"])
longestCommonPrefix(["dog"])
longestCommonPrefix(["c", "c"])
longestCommonPrefix([])
longestCommonPrefix(["aa", "a"])
