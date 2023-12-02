//
//  InsertionSortTests.swift
//  AlgorithmsTests
//
//  Created by Collins, Matthew - MC on 02/12/2023.
//

import XCTest

final class InsertionSortTests: XCTestCase {

    func testInsertionSorthWithUnsortedArrayReturnsSortedArray() {
        
        // ARRANGE
        let unsorted = [9,8,7,6,5,4,3,2,1]
        let expected = [1,2,3,4,5,6,7,8,9]
        let insertionSort = InsertionSort(data: unsorted)
        
        // ACT
        let actual = insertionSort.sort()
        
        // ASSERT
        XCTAssertEqual(actual, expected)
    }
    
    func testInsertionSortWithArraySizeOneReturnsArray() {
        
        // ARRANGE
        let unsorted = [1]
        let expected = [1]
        let insertionSort = InsertionSort(data: unsorted)
        
        // ACT
        let actual = insertionSort.sort()
        
        // ASSERT
        XCTAssertEqual(actual, expected)
    }

    func testInsertionSortWithEmptyArrayReturnsEmptyArray() {
        
        // ARRANGE
        let unsorted = [Int]()
        let expected = [Int]()
        let insertionSort = InsertionSort(data: unsorted)
        
        // ACT
        let actual = insertionSort.sort()
        
        // ASSERT
        XCTAssertEqual(actual, expected)
    }
}
