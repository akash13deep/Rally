//
//  Moto.swift
//  Rally
//
//  Created by JASI on 23/10/19.
//  Copyright © 2019 JASI. All rights reserved.
//

import Foundation


class Moto: Vehicle{
    var hasSideCar = false
    
    init(hasSideCar: Bool){
        self.hasSideCar = hasSideCar
        super.init()
    }
    
    init(hasSideCar: Bool, name: String,maxSpeed: Double,weight: Int, fuelLevel:Int) {
        self.hasSideCar = hasSideCar
        super.init(name: name, maxSpeed: maxSpeed, weight: weight, fuelLevel: fuelLevel)
    }
    
    //Method to display Moto data in required format depending on whether it has side car or not
    func showMotoData(){
        if hasSideCar{
            print("\(self.name) -> speed max = \(self.maxSpeed) km/h, weight = \(self.weight) kg, Moto, with sidecar")
        }
        else{
            print("\(self.name) -> speed max = \(self.maxSpeed) km/h, weight = \(self.weight) kg, Moto")
        }
    }
    
    
    
}
