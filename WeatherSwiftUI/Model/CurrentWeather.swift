//
//  CurrentWeather.swift
//  WeatherSwiftUI
//
//  Created by Victor on 19.09.2022.
//

import Foundation

struct WeatherData: Codable {
    let current: Current
    let daily: [Daily]
}

struct Weather: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

struct Current: Codable {
    let temp: Double
    //let feelsLike: Double
    let wind_speed: Double
    let weather: [Weather]
}

struct WeatherForWeek: Codable {
    var weatherForWeek: [Daily]
}

struct Daily: Codable {
    let temp: Temp
    let wind_speed: Double
    let weather: [Weather]
}

struct Temp: Codable {
    let day: Double
    let min: Double
    let max: Double
    let night: Double
    let eve: Double
    let morn: Double
    
}
