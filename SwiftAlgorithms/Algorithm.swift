//
//  Algorithm.swift
//  SwiftAlgorithms
//
//  Created by Howard, Freddie (ABH) on 07/11/2023.
//

import Foundation

class Algorithm {
    
    func linearSearch(data: [Int], item: Int) -> Bool {
        for i in 0 ..< data.count {
            if data[i] == item {
                return true
            }
        }
        
        return false
        
    }
    
    func bubbleSort(data: [Int]) -> [Int] {
        
        var newData = data
        
        if newData.count == 0 {
            return []
        }
        
        for _ in 1 ..< newData.count {
            for j in 1 ..< newData.count {
                
                if newData[j]<newData[j-1] {
                    
                    let tempLess = newData[j]
                    let tempMore = newData[j-1]
                    newData[j-1] = tempLess
                    newData[j] = tempMore
                    
                }
                
            }
        }
        return newData
        
    }
    
    func binarySearch(data: [Int], searchNumber: Int) -> Bool{
        
        var dataSorted = bubbleSort(data: data)
        
        
        
        if dataSorted.count == 0 {
            return false
        }
        
        if dataSorted.count == 1 {
            if dataSorted[0] == searchNumber {
                return true
            }
            
            else {
                return false
            }
            
        }
        
        var lowerHalf = [Int]()
        var upperHalf = [Int]()
        
        let midpoint = dataSorted.count/2
        
        for i in 0..<midpoint {
            lowerHalf.append(dataSorted[i])
        }
        
        for i in midpoint+1 ..< dataSorted.count {
            upperHalf.append(dataSorted[i])
        }
        
        print(lowerHalf)
        print(upperHalf)
        
        
        
        
        
        if searchNumber == dataSorted[midpoint] {
            return true
        }
        
        if searchNumber < dataSorted[midpoint] && dataSorted.count != 1 {
            
            return binarySearch(data: lowerHalf, searchNumber: searchNumber)
            
            //if binarySearch(data: lowerHalf, searchNumber: searchNumber) == true {
            //return true
            //}
            }
        
        if searchNumber > dataSorted[midpoint] && dataSorted.count != 1 {
            binarySearch(data: upperHalf, searchNumber: searchNumber)
        }
        
        
        return false
        }
    }

func quickSort(data: [Int]) -> [Int] {
    
    var pivot: Int = data[0]
    var left = [Int]()
    var right = [Int]()
    if data.count >= 2 {
        for i in 1 ..< data.count {
            if data[i] <= pivot {
                left.append(data[i])
            }
            
            else {
                right.append(data[i])
            }
        }
    }
    else{
        return data
    }

    var newList = [Int]()
//    newList.append(contentsOf: left)
//    newList.append(pivot)
//    newList.append(contentsOf: right)
    left = quickSort(data: left)
    right = quickSort(data: right)
            
    
    newList.append(contentsOf: left)
    newList.append(pivot)
    newList.append(contentsOf: right)
    
    return newList
        
}



