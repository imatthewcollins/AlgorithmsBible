//
//  QuickSortTests.swift
//  AlgorithmsTests
//
//  Created by Collins, Matthew - MC on 02/12/2023.
//

import XCTest

final class QuickSortTests: XCTestCase {

    func testQuickSortWithUnsortedArrayAndPivotFirstItemReturnsSortedArray() {
        
        // ARRANGE
        let data = [9,8,7,6,5,4,3,2,1]
        let expected = [1,2,3,4,5,6,7,8,9]
        let quickSort = QuickSort(data: data, pivotChoice: .first)
        
        // ACT
        let actual = quickSort.sort()
        
        // ASSERT
        XCTAssertEqual(actual, expected)
    }
    
    func testQuickSortWithUnsortedArrayAndPivotMedianOfThreeReturnsSortedArray() {
        
        // ARRANGE
        let data = [9,8,7,6,5,4,3,2,1]
        let expected = [1,2,3,4,5,6,7,8,9]
        let quickSort = QuickSort(data: data, pivotChoice: .medianOfThree)
        
        // ACT
        let actual = quickSort.sort()
        
        // ASSERT
        XCTAssertEqual(actual, expected)
    }
}
