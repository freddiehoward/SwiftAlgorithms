//
//  SwiftAlgorithmsTestCases.swift
//  SwiftAlgorithmsTestCases
//
//  Created by Howard, Freddie (ABH) on 07/11/2023.
//

import XCTest

final class SwiftAlgorithmsTestCases: XCTestCase {
    
    //test-driven development
    //the tests are driving what we develop
    
    //RED -> GREEN -> REFACTOR
    //Write test cases that fail ie red
    //write minimal code to fix failures ie green
    //refactor the code/test to be most efficient
    
    func testLinearSearchWithSortedArrayAndSearchHitReturnsTrue() {
        
        //ARRANGE
        let sut = Algorithm()
        let searchData = [1,2,3,4,5,6]
        let searchItem = 4
        let expected = true
        
        //ACT
        let actual = sut.linearSearch(data: searchData, item: searchItem)
        
        
        //ASSERT
        XCTAssertEqual(actual, expected)
        
        
    }
    
    func testLinearSearchWithEmptyArrayAndSearchHitReturnsTrue() {
        
        //ARRANGE
        //sut = system under test ie function being tested
        let sut = Algorithm()
        let searchData = [Int]()
        let searchItem = 4
        let expected = false
        
        //ACT
        let actual = sut.linearSearch(data: searchData, item: searchItem)
        
        
        //ASSERT
        XCTAssertEqual(actual, expected)
        
    }
    
    func testLinearSearchPerformanceOnSortedArrayReturnsTrue() {
        
        //ARRANGE
        let sut = Algorithm()
        let searchData = [1,2,3,4,5,6]
        let searchItem = 4
        let expected = true
        
        //ACT
        measure {
            let actual = sut.linearSearch(data: searchData, item: searchItem)
        }
        
    }
}
