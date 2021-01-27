# Problem-Solving-Using-Swift-
Solve interview problem using swift

<h2>Two Sum<h2> 
  <p><b>Problem</b></p>
  <p>https://leetcode.com/problems/two-sum/<p>
  
  <p><b>Solution</b></p>
     <p>Using nested loop</p>
     ```swift
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

 ```
