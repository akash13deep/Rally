import Foundation

                                                            //class Car extending Vehicle class

class Car: Vehicle{
    
                                                            //data member
    
    var category: String

                                                            //parameterized initializer
    
    init(category: String)
    {
        self.category = category
        super.init()                                        //calling the superclass initializer
    }
    
                                                            //parameterized initializer
    
    init(category: String, name: String,maxSpeed: Double,weight: Int, fuelLevel:Int)
    {
        self.category = category
                                                            //calling the superclass initializer
        super.init(name: name, maxSpeed: maxSpeed, weight: weight, fuelLevel: fuelLevel)
    }
    
                                                            //getter
    
    func getCategory() -> String
    {
        return category
    }
    
                                                            //method to display the deatils of car 
    
    func showCarData()
    {
        print("\(self.name) -> speed max = \(self.maxSpeed) km/h, weight = \(self.weight) kg, car category = \(self.category)")
    }
    
}
