//
//  MergeSortTests.swift
//  AlgorithmsTests
//
//  Created by Collins, Matthew - MC on 02/12/2023.
//

import XCTest

final class MergeSortTests: XCTestCase {

    func testMergeSortArraySizeEightReturnsSortedArray() {
        
        // ARRANGE
        let data = [8,7,6,5,4,3,2,1]
        let expected = [1,2,3,4,5,6,7,8]
        let mergeSort = MergeSort(data: data)
        
        // ACT
        let actual = mergeSort.sort()
        
        // ASSERT
        XCTAssertEqual(actual, expected)
    }
    
    func testMergeSortArraySizeSevenReturnsSortedArray() {
        
        // ARRANGE
        let data = [7,6,5,4,3,2,1]
        let expected = [1,2,3,4,5,6,7]
        let mergeSort = MergeSort(data: data)
        
        // ACT
        let actual = mergeSort.sort()
        
        // ASSERT
        XCTAssertEqual(actual, expected)
    }

}
