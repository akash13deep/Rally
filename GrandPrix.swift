

import Foundation

class GrandPrix: Rally{
    var rallyVehicles = [Vehicle]()
    var finishingVehicles = [Vehicle]()
    
    func add(vehicle: Vehicle){
        rallyVehicles += [vehicle]
    }
    
    func run(turn: Int){
        var proceed = true
        for index in 0...rallyVehicles.count-1{
            if(index != rallyVehicles.count-1){
                if(!check(v1: rallyVehicles[index],v2: rallyVehicles[index+1])){
                    proceed = false
                }
            } else{
                check(v1: rallyVehicles[index],v2: rallyVehicles[0])
            }
        }
        if(proceed){
            
            for index in 0...rallyVehicles.count-1{
                let vehicle = rallyVehicles[index]
                vehicle.fuelLevel = vehicle.fuelLevel - turn
                if(vehicle.fuelLevel>0){
                    finishingVehicles.append(vehicle)
                }
            }
            if(finishingVehicles.count != 0){
                var bestVehicle = finishingVehicles[0]
                for index in 1...finishingVehicles.count-1{
                    if(index != finishingVehicles.count-1){
                        if(!bestVehicle.better(otherVehicle: finishingVehicles[index+1])){
                            bestVehicle = finishingVehicles[index+1]
                        }
                    }
                }
                print("The winner of the Grand Prix is:")
                bestVehicle.showData()
            }
            else{
                print("All the vehicles failed to finish the rally")
            }
        }
        else{
            print("Not Grand Prix")
        }
    }
}

