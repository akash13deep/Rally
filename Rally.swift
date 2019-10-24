
import Foundation

                                                    // defining a calss Rally

class Rally
{
    
                                                    // method to check whether the race is possible or not between the entered vehicles
                                                    //two wheeled vehicles can race together
                                                    //car and motorcycle with sidecar can have race together
                                                    //car and car can have race together
                                                    //two wheeleed and car cannot race together
    func check(v1: Vehicle, v2: Vehicle) -> Bool
    {
        if v1.isTwoWheeled(vehicle: v1) && v2.isTwoWheeled(vehicle: v2)
        {
            print(true)
            return true
        }
        else if !v1.isTwoWheeled(vehicle: v1) && !v2.isTwoWheeled(vehicle: v2)
        {
            print(true)
            return true
        }
        else
        {
            print(false)
            return false
        }
    }
    
}

                                                    //end of class Rally

