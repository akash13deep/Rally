


import Foundation

                                                            //sub class GrandPrix extending super class Rally

class GrandPrix: Rally
{
    
                                                            //creating empty array of type Vehicle
    
    var rallyVehicles = [Vehicle]()
    var finishingVehicles = [Vehicle]()
    
                                                            //method to add vehicles to the rallyVehicles array so that they can race
    
    func add(vehicle: Vehicle)
    {
        rallyVehicles += [vehicle]
    }
    
                                                            //method to see if the vehicles can still race together
                                                            //checks on the basis of level of fuel
    
    func run(turn: Int){
        var proceed = true
        print("\n****************************************\n")
        print("Test part 2")
          print("\n****************************************\n")
        for index in 0...rallyVehicles.count-1
        {
            if(index != rallyVehicles.count-1)
            {
                if(!check(v1: rallyVehicles[index],v2: rallyVehicles[index+1]))
                {
                    proceed = false
                }
            } else{
                check(v1: rallyVehicles[index],v2: rallyVehicles[0])
            }
        }
        
                                                            //if fuel level of vehicle is greater than the number of turns then the vehicles are still in the race
        
        if(proceed){
            
            for index in 0...rallyVehicles.count-1
            {
                let vehicle = rallyVehicles[index]
                vehicle.fuelLevel = vehicle.fuelLevel - turn
                if(vehicle.fuelLevel>0)
                {
                    finishingVehicles.append(vehicle)
                }
            }
            
                                                            //if there are more than one vehicles left then the winner is decided on the basis of performance
            
            if(finishingVehicles.count != 0){
                var bestVehicle = finishingVehicles[0]
                for index in 1...finishingVehicles.count-1
                {
                    if(index != finishingVehicles.count-1)
                    {
                        if(!bestVehicle.better(otherVehicle: finishingVehicles[index+1]))
                        {
                            bestVehicle = finishingVehicles[index+1]
                        }
                    }
                }
                
                                                        //prints the winner of the race
                 print("\n****************************************\n")
                print("Test Part 3")
                  print("\n****************************************\n")
                print("The winner of the Grand Prix is:")
                bestVehicle.showData()
            }
            else
                                                        //if no vehicle completed the race then it willdisplay the following message
                
            {
               print("\n****************************************\n")
                print("Test part 3")
                print("\n****************************************\n")
                print("All the vehicles failed to finish the rally")
            }
        }
        else
                                                        //if there were no vehicles which could race then it prints Not GrandPrix
            
        {
            print("Not Grand Prix")
        }
    }
}

                                                        //end ofclass GrandPrix
