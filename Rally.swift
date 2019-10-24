//
//  Rally.swift
//  Rally
//
//  Created by JASI on 23/10/19.
//  Copyright © 2019 JASI. All rights reserved.
//

import Foundation


class Rally{
    func check(v1: Vehicle, v2: Vehicle) -> Bool {
        if v1.isTwoWheeled(vehicle: v1) && v2.isTwoWheeled(vehicle: v2){
            print(true)
            return true
        }
        else if !v1.isTwoWheeled(vehicle: v1) && !v2.isTwoWheeled(vehicle: v2){
            print(true)
            return true
        }
        else{
            print(false)
            return false
        }
    }
    
}

