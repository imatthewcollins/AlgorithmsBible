//
//  MergeSort.swift
//  AlgorithmsBible
//
//  Created by Collins, Matthew - MC on 02/12/2023.
//

import Foundation

class MergeSort {
    
    private let data: [Int]
    
    init(data: [Int]) {
        self.data = data
    }
    
    private func merge(left: [Int], right: [Int]) -> [Int] {
        var sortedCombo = [Int]()
        var leftPointer = 0
        var rightPointer = 0
        
        for _ in 0..<(left.count + right.count) {
            if leftPointer < left.count && rightPointer < right.count {
                if left[leftPointer] <= right[rightPointer] {
                    sortedCombo.append(left[leftPointer])
                    leftPointer += 1
                }
                else {
                    sortedCombo.append(right[rightPointer])
                    rightPointer += 1
                }
            }
            
            else if leftPointer < left.count {
                sortedCombo.append(left[leftPointer])
                leftPointer += 1
            }
            
            else if rightPointer < right.count {
                sortedCombo.append(right[rightPointer])
                rightPointer += 1
            }
        }
        return sortedCombo
    }
    
    private func mergeSort(data: [Int]) -> [Int] {
        // BASE CASE
        if data.count <= 1 {
            return data
        }
        
        // RECURSIVE CASE
        else {
            // FYI: THE DATA TYPE OF LEFT AND RIGHT IS ArraySlice<Int>
            // SO THESE MUST BE CAST TO NORMAL ARRAYS
            let left = data[0..<data.count/2]
            let right = data[data.count/2..<data.count]
            
            let leftSorted = mergeSort(data: Array(left))
            let rightSorted = mergeSort(data: Array(right))
            
            let sortedCombo = merge(left: leftSorted, right: rightSorted)
            return sortedCombo
        }
    }
    
    func sort() -> [Int] {
        return self.mergeSort(data: self.data)
    }
}
