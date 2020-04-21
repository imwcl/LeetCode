//: 给定一个字符串，请你找出其中不含有重复字符的 最长子串 的长度。
//: 示例 1:
//: 输入: "abcabcbb"
//: 输出: 3
//: 解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
//: 示例 2:
//: 输入: "bbbbb"
//: 输出: 1
//: 解释: 因为无重复字符的最长子串是 "b"，所以其长度为 1。
//: 示例 3:
//: 输入: "pwwkew"
//: 输出: 3
//: 解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。

// 暴力法
//func lengthOfLongestSubstring(_ s: String) -> Int {
//    if s.count == 1 {
//        return 1
//    }
//    var temp = [Character]()
//    var maxCount = 0
//    for i in s {
//        if temp.contains(i) {
//            maxCount = max(temp.count, maxCount)
//            let lastIndex = (temp.lastIndex(of: i) ?? 0) + 1
//            temp = Array(temp[lastIndex...])
//            temp.append(i)
//        } else {
//            temp.append(i)
//        }
//    }
//    return max(temp.count, maxCount)
//}

// 滑动窗口法
func lengthOfLongestSubstring(_ s: String) -> Int {
    var tempDic = [Character: Int]()
    var startIndex = 0
    var maxCount   = 0
    for (endIndex, c) in s.enumerated() {
        if let index = tempDic[c], index > startIndex {
            maxCount = max(maxCount, endIndex - startIndex)
            startIndex = index
        }
        let endIndex = endIndex + 1
        maxCount = max(maxCount, endIndex - startIndex)
        print("maxCount: \(maxCount) startIndex: \(startIndex) endIndex: \(endIndex)")
        tempDic[c] = endIndex
    }
    return maxCount
}

//lengthOfLongestSubstring(" ")
//lengthOfLongestSubstring("abcabcbb")
//lengthOfLongestSubstring("bbbbb")
//lengthOfLongestSubstring("pwwkew")
lengthOfLongestSubstring("abc")
