//
//  quickSort.swift
//  SwiftAlgorithms
//
//  Created by Howard, Freddie (ABH) on 03/11/2023.
//

import Foundation

let start = CFAbsoluteTimeGetCurrent()
var data = [5,4,3,2,7,10,6,9,8]
var sorted = quickSort(data: data)

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

