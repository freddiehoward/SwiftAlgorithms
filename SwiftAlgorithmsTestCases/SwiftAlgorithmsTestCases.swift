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
        let _ = true
        
        //ACT
        measure {
            let _ = sut.linearSearch(data: searchData, item: searchItem)
        }
    }
    
    func testLinearSearchWithNegativeValuesInArrayAndSearchHitReturnsTrue() {
        
        //ARRANGE
        //sut = system under test ie function being tested
        let sut = Algorithm()
        let searchData = [-1,-4,-2,-7,9,3]
        let searchItem = -2
        let expected = true
        
        //ACT
        let actual = sut.linearSearch(data: searchData, item: searchItem)
        
        
        //ASSERT
        XCTAssertEqual(actual, expected)
        
    }
    
    func testBubbleSortWithArrayAndFunctionReturnsArray() {
        
        //ARRANGE
        //sut = system under test ie function being tested
        let sut = Algorithm()
        let unsortedData = [-1,-4,-2,-7,9,3]
        let expected = [-7,-4,-2,-1,3,9]
        
        //ACT
        let actual = sut.bubbleSort(data: unsortedData)
        
        
        //ASSERT
        XCTAssertEqual(actual, expected)
        
        print(actual)
        
    }
    
    func testBubbleSortWithEmptyArrayAndFunctionReturnsEmptyArray() {
        
        //ARRANGE
        //sut = system under test ie function being tested
        let sut = Algorithm()
        let unsortedData = [-1,-4,-2,-7,9,3]
        let expected = [-7,-4,-2,-1,3,9]
        
        //ACT
        let actual = sut.bubbleSort(data: unsortedData)
        
        
        //ASSERT
        XCTAssertEqual(actual, expected)
        
        print(actual)
        
    }
    
    func testBinarySortWithAnEmptyArray() {
        
        //ARRANGE
        let sut = Algorithm()
        let unsortedData = [Int]()
        let expected = false
        let searchNumber = 0
        
        //ACT
        let actual = sut.binarySearch(data: unsortedData, searchNumber: searchNumber)
        
        //ASSERT
        XCTAssertEqual(actual, expected)
    }
    
    func testBinarySortWithSomeArraySearchHitReturnsTrue() {
        
        //ARRANGE
        let sut = Algorithm()
        let unsortedData = [1,2,3,4,5,6]
        let expected = true
        let searchNumber = 2
        
        //ACT
        let actual = sut.binarySearch(data: unsortedData, searchNumber: searchNumber)
        print(actual)
        //ASSERT
        XCTAssertEqual(actual, expected)
    }
    
}
