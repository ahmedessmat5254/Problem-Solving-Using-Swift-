
//Using Hash Table O(n)Time / O(n)Space
/*
 
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
 
*/

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
