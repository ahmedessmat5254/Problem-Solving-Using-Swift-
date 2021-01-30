
// First Solution
//class Solution {
//    func removeDuplicates(_ nums: inout [Int]) -> Int {
//
//        var i = nums.count - 1
//        var prev: Int = Int.min
//
//        while i >= 0 {
//            if nums[i] == prev{
//                nums.remove(at: i)
//            }else {
//                prev = nums[i]
//            }
//            i -= 1
//        }
//
//        return nums.count
//    }
//}

// Second Solution

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        nums = Set(nums).sorted()
        
        return nums.count
    }
}

