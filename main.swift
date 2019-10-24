//
//  main.swift
//  Rally
//
//  Created by JASI on 23/10/19.
//  Copyright © 2019 JASI. All rights reserved.
//

import Foundation

print("RALLY")
var cararray = [Car]()
var motoarray = [Moto]()

var flag = true

while(flag){
print("Enter the vehicle,press 1 for car and 2 for Moto")

var choice:Int! = Int(readLine()!)

if(choice == 1){
    print("Enter car details :")
    print("Enter car name")
    var carname: String! = readLine()!
    print("Enter car max speed")
    var maxspeed:Double! = Double(readLine()!)
    print("Enter weight")
    var weight:Int! = Int(readLine()!)
    print("Enter fuel level")
    var fuel: Int! = Int(readLine()!)
    print("CAR TYPE : Enter 1 for RACE CAR, 2 for TOURING CAR")
    var cartype = readLine()!
    if(cartype == "1"){
        cartype = "Race Car"
    }else if (cartype == "2"){
        cartype = "Touring Car"
    }else{
        cartype = "Race Car"
    }
    
    var car = Car(category: cartype, name: carname,maxSpeed: maxspeed,weight: weight, fuelLevel: fuel)
    cararray.append(car)
    
}else if (choice == 2){
    
    print("Enter moto details :")
    print("Enter moto name")
    var motoname: String! = readLine()!
    print("Enter moto max speed")
    var motomaxspeed:Double! = Double(readLine()!)
    print("Enter weight")
    var motoweight:Int! = Int(readLine()!)
    print("Enter fuel level")
    var motofuel: Int! = Int(readLine()!)
    print("Has SideCar : Enter 1 for With SideCar, 2 for Without SideCar")
    var mototype = readLine()!
    var vmototype:Bool
    if(mototype == "1"){
        vmototype = true
    }else if (mototype == "2"){
        vmototype = false
    }else{
        vmototype = true
    }
    
    var moto = Moto(hasSideCar: vmototype, name: motoname, maxSpeed: motomaxspeed, weight: motoweight, fuelLevel: motofuel)
    motoarray.append(moto)
    
} else {
    print("wrong choice,try again!")
}

    
    print("Do you want to add more vehicles? \n 1 for yes ,2 for no\n")
    
    var choic = readLine()!
    
    switch choic{
        
    case "1":
        flag = true
    case "2":
        flag = false
        break
    default:
        flag = false
        break
        
    }
}


var program = GrandPrix()
// lets show

for i in 0..<cararray.count{
    cararray[i].showCarData()
    program.add(vehicle: cararray[i])
    }

for i in 0..<motoarray.count{
    motoarray[i].showMotoData()
    program.add(vehicle: motoarray[i])
}

program.run(turn: 3)


