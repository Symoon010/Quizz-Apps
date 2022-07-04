//
//  Control Statement.swift
//  Swift Components
//
//  Created by Symoon Zadid on 25/6/22.
//

import Foundation
class ControlStatement {
    
    func chechSwitch() {
        
        var value = 14
        switch value{
        case 1:
            print("Value Not Found")
        case 2:
            print("Value Not Found")
        case 3:
            print("Value Not Found")
        case 4,16:
            value = 5
            print("Value Found")
        case 5:
            print("Value Not Found")
        default:
            print("Marjan")
            
        }
    }
}
