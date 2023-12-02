//
//  BinarySearch.swift
//  AlgorithmsBible
//
//  Created by Collins, Matthew - MC on 02/12/2023.
//

import Foundation

class BinarySearch {
    
    private let data: [Int]
    private let target: Int
    
    init(data: [Int], target: Int) {
        self.data = data
        self.target = target
    }
    
    private func binarySearch(start: Int, mid: Int, end: Int) -> Bool {
        // BASE CASE
        if end < start {
            return false
        }
        
        // RECURSIVE CASE
        else {
            if data[mid] == target {
                return true
            }
            else if target > data[mid] {
                let start = mid + 1
                let mid = start + (end - start) / 2
                return binarySearch(start: start, mid: mid, end: end)
            }
            else {
                let end = mid - 1
                let mid = start + (end - start) / 2
                return binarySearch(start: start, mid: mid, end: end)
            }
        }
    }
    
    func search() -> Bool {
        let start = 0
        let mid = data.count / 2
        let end = data.count - 1
        return self.binarySearch(start: start, mid: mid, end: end)
    }
}
