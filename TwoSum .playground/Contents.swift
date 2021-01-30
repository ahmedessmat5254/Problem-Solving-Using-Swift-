
//Using Hash Table O(n)Time / O(n)Space

 
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
      
        var numAndIndex = [Int: Int]()
        
        for (index, num) in nums.enumerated(){
            
            let pontentialMatch  = target - num
            
            if let secondIndex = numAndIndex [pontentialMatch] {
                return [index , secondIndex ]
            }
            
            numAndIndex[num] = index
        }
      
        
        return []
    }
}
 


//Using Nested Loop O(n^2) Time , Space O(ns)
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        for i in 0..<nums.count {
            let firstNumber = nums[i]
            for j in 0..<nums.count where j != i {
                let secondNumber = nums[j]

                if firstNumber + secondNumber == target {
                    return [i, j]
                }
            }
        }
        return []
    }
}



func twoNumberSum(_ array: inout [Int], target: Int) ->[Int] {
    
    array.sort()
    
    var left = 0
    var right = array.count - 1
    
    while left < right {
        let currentSum = array[left] + array[right]
        if currentSum == target {
            return [left, right]
        }else if currentSum < target{
            left += 1
        }else if currentSum > target {
            right -= 1
        }
    }
    return []
}


class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
      
        nums.sorted{
            $0 < $1
        }
        var left = 0
        var right = nums.count - 1
        
        while left < right {
            let currentSum = nums[left] + nums[right]
            if currentSum == target {
                return [left, right]
            }else if currentSum < target {
                left += 1
            }else if currentSum > target {
                right -= 1
            }
        }
        return []
    }
}




var test = Solution().twoSum([3,4,7,1], 10)
