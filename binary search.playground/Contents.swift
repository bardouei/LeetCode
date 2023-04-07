import Foundation

// binary search
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        var mid: Int!

        while left <= right {
            mid = (left + right) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                 left = mid + 1
            } else if nums[mid] > target {
                 right = mid - 1
            }
        }
        return -1
    }

    let nums = [-1,0,3,5,9,12]
    print(search(nums, 9))
    print(search(nums, 2))



func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var indices: [Int] = []
    var hashMap: [Int: Int] = [:]
    for (index, num) in nums.enumerated() {
        let complement = target - num
        if let complementIndex = hashMap[complement] {
            indices.append(complementIndex)
            indices.append(index)
        }
        hashMap[num] = index
    }
    return indices

}

print(twoSum([2,7,11,15], 9))


//[2,7,11,15], target = 9
//Output: [0,1]

