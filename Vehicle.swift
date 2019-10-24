//
//  Vehicle.swift
//  Rally
//
//  Created by JASI on 23/10/19.
//  Copyright © 2019 JASI. All rights reserved.
//

import Foundation

protocol VehicleProtocol{
    var name: String { get }
    var maxSpeed: Double { get }
    var weight: Int { get }
    var fuelLevel: Int { get }
}

class Vehicle: VehicleProtocol{
    var name: String
    var maxSpeed: Double
    var weight: Int
    var fuelLevel: Int
    
    init(){
        name = "Anonym"
        maxSpeed = 130
        weight = 1000
        fuelLevel = 0
    }
    
    init(name: String,maxSpeed: Double,weight: Int, fuelLevel:Int) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        self.fuelLevel = fuelLevel
    }
    
    func getName() -> String{
        return self.name
    }
    
    func getMaxSpeed() -> Double{
        return self.maxSpeed
    }
    
    func getWeight() -> Int{
        return self.weight
    }
    
    func getFuelLevel() -> Int{
        return self.fuelLevel
    }
    
    func isTwoWheeled(vehicle: Vehicle) -> Bool{
        if let v = vehicle as? Moto{
            if(v.hasSideCar){
                return false
            }
            else{
                return true
            }
        }
        else{
            return false
        }
    }
    
    func showData(){
        print("\(self.name) -> speed max = \(self.maxSpeed) km/h, weight = \(self.weight) kg")
    }
    
    func better(otherVehicle: Vehicle) -> Bool{
        if self.performance() > otherVehicle.performance()
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    func performance() -> Double{
        return self.maxSpeed/Double(self.weight)
    }
    
}


