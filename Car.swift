//
//  Car.swift
//  Rally
//
//  Created by JASI on 23/10/19.
//  Copyright © 2019 JASI. All rights reserved.
//

import Foundation

class Car: Vehicle{
    var category: String
    
    init(category: String){
        self.category = category
        super.init()
    }
    
    init(category: String, name: String,maxSpeed: Double,weight: Int, fuelLevel:Int) {
        self.category = category
        super.init(name: name, maxSpeed: maxSpeed, weight: weight, fuelLevel: fuelLevel)
    }
    
    func getCategory() -> String{
        return category
    }
    
    func showCarData(){
        print("\(self.name) -> speed max = \(self.maxSpeed) km/h, weight = \(self.weight) kg, car category = \(self.category)")
    }
    
}
