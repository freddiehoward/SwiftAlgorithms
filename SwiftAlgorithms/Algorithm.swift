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
       
            
        }
    }


