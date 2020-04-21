//:给你一个数组 nums，对于其中每个元素 nums[i]，请你统计数组中比它小的所有数字的数目。换而言之，对于每个 nums[i] 你必须计算出有效的 j 的数量，其中 j 满足 j != i 且 nums[j] < nums[i] 。以数组形式返回答案。

func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    var repeatArr = Array<Int>.init(repeating: 0, count: 101)
    var resultArr = Array<Int>.init(repeating: 0, count: nums.count)
    for num in nums {
        repeatArr[num] = repeatArr[num] + 1
    }
    for i in 1..<repeatArr.count {
        repeatArr[i] += repeatArr[i - 1]
    }
    for (i, num) in nums.enumerated() {
        resultArr[i] = num == 0 ? 0 : repeatArr[num - 1]
    }
    return resultArr
}

smallerNumbersThanCurrent([6,5,4,8,100])
