//
//  BubbleSort.swift
//  AlgorithmsBible
//
//  Created by Collins, Matthew - MC on 02/12/2023.
//

import Foundation

class BubbleSort {
    
    private var data: [Int]
    
    init(data: [Int]) {
        self.data = data
    }
    
    func sort() -> [Int] {
        for _ in 0..<data.count {
            for i in 0..<data.count - 1 {
                if data[i] > data[i+1] {
                    let temp = data[i]
                    data[i] = data[i+1]
                    data[i+1] = temp
                }
            }
        }
        return self.data
    }
}
