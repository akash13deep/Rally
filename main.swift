
import Foundation

print("RALLY")
                                                //creating an array of type Car

var cararray = [Car]()
                                                //creating an array of type Moto

var motoarray = [Moto]()

var flag = true

while(flag)
{
print("Enter the vehicle,press 1 for car and 2 for Moto")
var choice:Int! = Int(readLine()!)

if(choice == 1)
{                                               //asks user to enter the deatils of car
    
    print("Enter car details :\n")
    print("Enter car name:")
    var carname: String! = readLine()!
    print("Enter car max speed:")
    var maxspeed:Double! = Double(readLine()!)
    print("Enter weight:")
    var weight:Int! = Int(readLine()!)
    print("Enter fuel level:")
    var fuel: Int! = Int(readLine()!)
    print("\n****************************************\n")
    
                                                //asks user to enter the type of car
    
    print("CAR TYPE : Enter 1 for RACE CAR, 2 for TOURING CAR")
    var cartype = readLine()!
   
    if(cartype == "1")
    {
        cartype = "Race Car"
    }
    else if (cartype == "2")
    {
        cartype = "Touring Car"
    }
    else
    {
        
        cartype = "Race Car"
    }
                                                //creating instance of class Car and putting it into the variable car
    
    var car = Car(category: cartype, name: carname,maxSpeed: maxspeed,weight: weight, fuelLevel: fuel)
    
                                                //adding the details of car entered by the user in cararray
    
    cararray.append(car)
    
}
else if (choice == 2)
{
     print("\n****************************************\n")
    
                                                //asks user to enter the deatils of car
    
    print("Enter moto details :")
    print("Enter moto name:")
    var motoname: String! = readLine()!
    print("Enter moto max speed:")
    var motomaxspeed:Double! = Double(readLine()!)
    print("Enter weight:")
    var motoweight:Int! = Int(readLine()!)
    print("Enter fuel level:")
    var motofuel: Int! = Int(readLine()!)
     print("\n****************************************\n")
    
                                                //asks user to select whether the motorcycle has sidecar or not
    
    print("Has SideCar : Enter 1 for With SideCar, 2 for Without SideCar")
    var mototype = readLine()!
    var vmototype:Bool
    if(mototype == "1")
    {
        vmototype = true
    }else if (mototype == "2")
    {
        vmototype = false
    }else
    {
        vmototype = true
    }
    
                                                        //creating instance of class Moto and putting it into the variable moto
    
    var moto = Moto(hasSideCar: vmototype, name: motoname, maxSpeed: motomaxspeed, weight: motoweight, fuelLevel: motofuel)
   
                                                        //adding the details of moto entered by the user in motoarray
    
    motoarray.append(moto)
    
} else
{
    print("wrong choice,try again!")
}

    print("\n****************************************\n")
    
                                                        //asks user if he/she wants to addmore vehicles into the array
    
    print("Do you want to add more vehicles? \n 1 for yes ,2 for no\n")
    print("\n****************************************\n")
    
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

                                                            //creating instance of class GrandPrix

var program = GrandPrix()

// lets show

for i in 0..<cararray.count
{
    cararray[i].showCarData()
    program.add(vehicle: cararray[i])
    }

for i in 0..<motoarray.count
{
    motoarray[i].showMotoData()
    program.add(vehicle: motoarray[i])
}


                                                        //calling method run to specify the number of turns each vehicle takes  in the race

program.run(turn:60)



