//
//  LinearSearchTests.swift
//  AlgorithmsTests
//
//  Created by Collins, Matthew - MC on 02/12/2023.
//

import XCTest

final class LinearSearchTests: XCTestCase {

    func testLinearSearchWithUnsortedIntArrayAndSearchHitReturnsTrue() {
        
        // ARRANGE
        let data = [1,5,3,2,9,4,6,8,7]
        let target = 9
        let linearSearch = LinearSearch(data: data, target: target)
        let expected = true
        
        // ACT
        let actual = linearSearch.search()
        
        // ASSERT
        XCTAssertEqual(expected, actual)
    }

}
