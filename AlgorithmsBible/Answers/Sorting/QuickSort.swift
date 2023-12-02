//
//  QuickSort.swift
//  AlgorithmsBible
//
//  Created by Collins, Matthew - MC on 02/12/2023.
//

import Foundation


enum PivotChoice {
    case first
    case medianOfThree
}



class QuickSort {
    
    private let data: [Int]
    private let pivotChoice: PivotChoice
    
    init(data: [Int]) {
        self.data = data
        self.pivotChoice = .first
    }
    
    init(data: [Int], pivotChoice: PivotChoice) {
        self.data = data
        self.pivotChoice = pivotChoice
    }
    
    private func quickSort(data: [Int]) -> [Int] {
        // BASE CASE
        if data.count <= 1 {
            return data
        }
        
        // RECURSIVE CASE
        else {

            // FIND PIVOT BASED ON PIVOT CHOOSING METHOD
            var pivot = 0
            switch self.pivotChoice {
            case .first:
                pivot = data[0]
            case .medianOfThree:
                let first = data[0]
                let mid = data[data.count / 2]
                let end = data[data.count - 1]
                
                let pivot = first + mid + end - min(first, min(mid, end)) - max(first, max(mid, end))
            }
            
            var left = [Int]()
            var right = [Int]()
            
            // N.B. THIS ASSUMES THE PIVOT IS A UNIQUE VALUE
            // IF THE PIVOT VALUE OCCURS IN OTHER PARTS OF THE
            // ARRAY THEN IT WILL BE GLOSSED OVER
            // FINAL ARRAY WILL CONTAIN NO REPEATED PIVOT VALUES
            for datum in data {
                if datum < pivot {
                    left.append(datum)
                }
                else if datum > pivot {
                    right.append(datum)
                }
            }
            
            let leftSorted = quickSort(data: left)
            let rightSorted = quickSort(data: right)
            
            return leftSorted + [pivot] + rightSorted
        }
    }
    
    func sort() -> [Int] {
        return self.quickSort(data: self.data)
    }
}
