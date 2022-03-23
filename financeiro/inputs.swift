//
//  inputs.swift
//  financeiro
//
//  Created by Stephane Girão Linhares on 11/03/22.
//

import Foundation


func getInt() -> Int{
    let input: String?  = readLine()
    if let string = input, let int = Int(string) {
        return int
    } else {
        return 0
    }
}
