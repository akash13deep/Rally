import Foundation

                                                //creating a protocol called VehicleProtocol

protocol VehicleProtocol
{
    
                                                //declaring data members
    
    var name: String { get }
    var maxSpeed: Double { get }
    var weight: Int { get }
    var fuelLevel: Int { get }
}

                                                 //super class Vehicle implements protocol VehicleProtocol

class Vehicle: VehicleProtocol
{
                                                //declaring data members
    var name: String
    var maxSpeed: Double
    var weight: Int
    var fuelLevel: Int
    
                                                //default initializer
    
    init()
    {
        name = "Anonym"
        maxSpeed = 130
        weight = 1000
        fuelLevel = 0
    }
    
                                                //initializer with parameters
    
    init(name: String,maxSpeed: Double,weight: Int, fuelLevel:Int)
    {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        self.fuelLevel = fuelLevel
    }
                                                //getter
    func getName() -> String
    {
        return self.name
    }
    
    func getMaxSpeed() -> Double
    {
        return self.maxSpeed
    }
    
    func getWeight() -> Int
    {
        return self.weight
    }
    
    func getFuelLevel() -> Int
    {
        return self.fuelLevel
    }
    
                                                //method to check whether the vehicle is two wheeled or not
    
    func isTwoWheeled(vehicle: Vehicle) -> Bool
    {
        if let v = vehicle as? Moto
        {
            if(v.hasSideCar)
            {
                return false
            }
            else
            {
                return true
            }
        }
        else
        {
            return false
        }
    }
    
                                                //method to display the deatils of Vehicle
    
    func showData()
    {
        print("\(self.name) -> speed max = \(self.maxSpeed) km/h, weight = \(self.weight) kg")
    }
    
                                                //method to check the performance of the vehicle based on the speed and weight
                                                //performance is calculated as the ratio of speed and weight
                                                //better performance -> vehicle with maximum speed and is light weight
    
    func performance() -> Double
    {
        return self.maxSpeed/Double(self.weight)
    }
    
                                                //method to compare the performance of one vehicle with the other vehicles
    
    func better(otherVehicle: Vehicle) -> Bool
    {
        if self.performance() > otherVehicle.performance()
        {
            return true
        }
        else
        {
            return false
        }
    }
}

                                                //end of super class Vehicle



