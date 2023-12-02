//
//  BinarySearchTests.swift
//  AlgorithmsTests
//
//  Created by Collins, Matthew - MC on 02/12/2023.
//

import XCTest

final class BinarySearchTests: XCTestCase {

    func testBinarySearchWithArraySizeSevenAndSearchHitReturnsTrue() {
        
        // ARRANGE
        let data = [1,2,3,4,5,6,7]
        let target = 5
        let expected = true
        let binarySearch = BinarySearch(data: data, target: target)
        
        // ASSERT
        let actual = binarySearch.search()
        
        // ACT
        XCTAssertEqual(actual, expected)
    }
    
    func testBinarySearchWithArraySizeSevenAndSearchMissReturnsFalse() {
        
        // ARRANGE
        let data = [1,2,3,4,5,6,7]
        let target = 9
        let expected = false
        let binarySearch = BinarySearch(data: data, target: target)
        
        // ASSERT
        let actual = binarySearch.search()
        
        // ACT
        XCTAssertEqual(actual, expected)
    }
    
    
    func testBinarySearchWithArraySizeSixAndSearchHitReturnsTrue() {
        
        // ARRANGE
        let data = [1,2,3,4,5,6]
        let target = 4
        let expected = true
        let binarySearch = BinarySearch(data: data, target: target)
        
        // ASSERT
        let actual = binarySearch.search()
        
        // ACT
        XCTAssertEqual(actual, expected)
    }
    
    func testBinarySearchWithArraySizeSixAndSearchMissReturnsFalse() {
        
        // ARRANGE
        let data = [1,2,3,4,5,6]
        let target = 8
        let expected = false
        let binarySearch = BinarySearch(data: data, target: target)
        
        // ASSERT
        let actual = binarySearch.search()
        
        // ACT
        XCTAssertEqual(actual, expected)
    }
    
    func testBinarySearchWithArraySizeOneAndSearchHitReturnsTrue() {
        
        // ARRANGE
        let data = [1]
        let target = 1
        let expected = true
        let binarySearch = BinarySearch(data: data, target: target)
        
        // ASSERT
        let actual = binarySearch.search()
        
        // ACT
        XCTAssertEqual(actual, expected)
    }
    
    func testBinarySearchWithArraySizeOneAndSearchMissReturnsFalse() {
        
        // ARRANGE
        let data = [1]
        let target = 2
        let expected = false
        let binarySearch = BinarySearch(data: data, target: target)
        
        // ASSERT
        let actual = binarySearch.search()
        
        // ACT
        XCTAssertEqual(actual, expected)
    }
    
    func testBinarySearchWithEmptyArrayReturnsFalse() {
        
        // ARRANGE
        let data = [Int]()
        let target = 2
        let expected = false
        let binarySearch = BinarySearch(data: data, target: target)
        
        // ASSERT
        let actual = binarySearch.search()
        
        // ACT
        XCTAssertEqual(actual, expected)
    }

}
