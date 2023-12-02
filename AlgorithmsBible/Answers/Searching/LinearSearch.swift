//
//  LinearSearch.swift
//  AlgorithmsBible
//
//  Created by Collins, Matthew - MC on 02/12/2023.
//

import Foundation

class LinearSearch {
    
    private let data: [Int]
    private let target: Int
    
    init(data: [Int], target: Int) {
        self.data = data
        self.target = target
    }
    
    func search() -> Bool {
        for datum in data {
            if datum == target {
                return true
            }
        }
        return false
    }
}
