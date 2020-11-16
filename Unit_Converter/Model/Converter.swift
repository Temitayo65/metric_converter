//
//  Converter.swift
//  Unit_Converter
//
//  Created by owner on 16/11/2020.
//

import Foundation

class Converter{
    class func getKilometersGivenMiles(forMiles miles: Double) -> Double{
        return (miles * 1.60934)
    }
    
    class func getMilesGivenKilometer(forKilometers kilometers: Double) -> Double{
        return (kilometers * 0.621371)
    }
    
    class func getKgGivenLbs(forLbs lbs: Double)-> Double{
        return (lbs * 0.453592)
    }
    
    class func getLbsGivenKg(forKg kg: Double)-> Double{
        return (kg * 2.20462)
    }

    
}
