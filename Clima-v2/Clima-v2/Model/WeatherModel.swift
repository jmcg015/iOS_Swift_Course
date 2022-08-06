//
//  WeatherModel.swift
//  Clima-v2
//
//  Created by Joe McGarry on 10/01/2022.
//

import Foundation

struct WeatherModel {
    let conditionID: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionID {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 500...623:
            return "cloud.snow"
        case 700...771:
            return "cloud.fog"
        case 781:
            return "tornado"
        case 800:
            return "sun.max"
        case 801:
            return "cloud.sun"
        default:
            return "cloud"
        }
    }
}
