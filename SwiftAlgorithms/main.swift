//
//  main.swift
//  SwiftAlgorithms
//
//  Created by Howard, Freddie (ABH) on 31/10/2023.
//

import Foundation

var data: [Int] = [1,4,3,2,7,8,5]



func insertionSort(data: inout [Int]) {
    for i in 1..<data.count {
        print("this is i \(i)")
        print("this is data[i] \(data[i])")
        print("this is data[i-1] \(data[i-1])")
        if data[i] < data[i-1] {
            print("SWAPPED")
            var tempi1 = data[i-1]
            var tempi = data[i]
            data[i-1] = tempi
            data[i] = tempi1
            print(data)
        }
    }
}

print(data)

insertionSort(data: &data)

