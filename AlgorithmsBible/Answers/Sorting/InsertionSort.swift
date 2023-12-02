//
//  InsertionSort.swift
//  AlgorithmsBible
//
//  Created by Collins, Matthew - MC on 02/12/2023.
//

import Foundation

class InsertionSort {
    
    private var data: [Int]
    
    init(data: [Int]) {
        self.data = data
    }
    
    func sort() -> [Int] {
        if data.count == 0 {
            return data
        }
        else {
            for i in 1..<data.count {
                if data[i] < data[i-1] {
                    var j = i - 1
                    while j >= 0 {
                        if data[j] > data[j+1] {
                            let temp = data[j]
                            data[j] = data[j+1]
                            data[j+1] = temp
                            j -= 1
                        }
                    }
                }
            }
            return data
        }
    }
}
