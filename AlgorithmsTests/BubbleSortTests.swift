//
//  BubbleSortTests.swift
//  AlgorithmsTests
//
//  Created by Collins, Matthew - MC on 02/12/2023.
//

import XCTest

final class BubbleSortTests: XCTestCase {

    func testBubbleSortWithUnsortedArrayReturnsSortedIntArray() {
    
        // ARRANGE
        let unsorted = [9,8,7,6,5,4,3,2,1]
        let expected = [1,2,3,4,5,6,7,8,9]
        let bubbleSort = BubbleSort(data: unsorted)
        
        // ACT
        let actual = bubbleSort.sort()
        
        // ASSERT
        XCTAssertEqual(actual, expected)
    }
    
    func testBubbleSortWithArraySizeOneReturnsSortedIntArray() {
        
        // ARRANGE
        let unsorted = [1]
        let expected = [1]
        let bubbleSort = BubbleSort(data: unsorted)
        
        // ACT
        let actual = bubbleSort.sort()
        
        // ASSERT
        XCTAssertEqual(actual, expected)
    }
    
    func testBubbleSortWithEmptyArrayReturnsEmptyArray() {
        
        // ARRANGE
        let unsorted = [Int]()
        let expected = [Int]()
        let bubbleSort = BubbleSort(data: unsorted)
        
        // ACT
        let actual = bubbleSort.sort()
        
        // ASSERT
        XCTAssertEqual(actual, expected)
    }

}
