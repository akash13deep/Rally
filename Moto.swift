import Foundation

                                                                    //class Car extending Vehicle class

class Moto: Vehicle
{
                                                                    //data member
    
    var hasSideCar = false
    
                                                                   //parameterized initializer
    
    init(hasSideCar: Bool)
    {
        self.hasSideCar = hasSideCar
        super.init()                                                //calling the superclass initializer
    }
    
                                                                    //parameterized initializer
    
    init(hasSideCar: Bool, name: String,maxSpeed: Double,weight: Int, fuelLevel:Int)
    {
        self.hasSideCar = hasSideCar
                                                                    //calling the superclass initializer
        super.init(name: name, maxSpeed: maxSpeed, weight: weight, fuelLevel: fuelLevel)
    }
    
                                                                    //Method to display Moto data in required format depending on whether it has side car or not
    
    func showMotoData()
    {
        if hasSideCar
        {
            print("\(self.name) -> speed max = \(self.maxSpeed) km/h, weight = \(self.weight) kg, Moto, with sidecar")
        }
        else
        {
            print("\(self.name) -> speed max = \(self.maxSpeed) km/h, weight = \(self.weight) kg, Moto")
        }
    }
}

                                                                    //End of Moto class
