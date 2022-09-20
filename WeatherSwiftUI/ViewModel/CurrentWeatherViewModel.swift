//
//  CurrentModelView.swift
//  WeatherSwiftUI
//
//  Created by Victor on 19.09.2022.
//

import Foundation

struct CurrentWeatherViewModel {
    var day: String
    var icon: String
    var summary: String
    var temperature: String
    var windSpeed: String
    
    
    init() {
        self.day = "*"
        self.icon = "noData"
        self.summary = "--"
        self.temperature = "*"
        self.windSpeed = "*"
    }
    
    init(model: WeatherData) {
        self.init()
        let date = Date()
        let calendar = Calendar.current
        let weekday = calendar.component(.weekday, from: date)
        var dayOfWeek = ""
        
        switch(weekday) {
        case 1:
            dayOfWeek = "Воскресенье"
            break;
        case 2:
            dayOfWeek = "Понедельник"
            break;
        case 3:
           dayOfWeek = "Вторник"
            break;
        case 4:
            dayOfWeek = "Среда"
            break;
        case 5:
            dayOfWeek = "Четверг"
            break;
        case 6:
            dayOfWeek = "Пятница"
            break;
        case 7:
            dayOfWeek = "Суббота"
            break;
        default:
            break;
        }
        self.day = dayOfWeek
        self.icon = model.current.weather[0].icon
        self.summary = model.current.weather.description
        self.temperature = "\(model.current.temp.description)º"
        self.windSpeed = model.current.wind_speed.description
        
    }
}
