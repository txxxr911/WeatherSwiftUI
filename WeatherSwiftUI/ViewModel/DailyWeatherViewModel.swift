//
//  DailyWeatherViewModel.swift
//  WeatherSwiftUI
//
//  Created by Victor on 19.09.2022.
//

import Foundation

struct Data {
    let id: String
    let day: String
    let tempMin: String
    let tempMax: String
    let icon: String
    let description: String
    let main: String
}

struct DailyWeatherViewModel {
    var data: [Data]
    
    init() {
        self.data = [Data]()
    }
    
    init(model: WeatherData) {
        self.init()
        
        let date = Date()
        let calendar = Calendar.current
        let weekday = calendar.component(.weekday, from: date)
        
        for i in 0...7 {
            var dayOfWeek = weekday + i
            var nameOfDay = ""
            
            if(dayOfWeek > 7) {dayOfWeek = dayOfWeek - 7 }
            
            switch(dayOfWeek) {
            case 1:
                nameOfDay = "Воскресенье"
                break;
            case 2:
                nameOfDay = "Понедельник"
                break;
            case 3:
                nameOfDay = "Вторник"
                break;
            case 4:
                nameOfDay = "Среда"
                break;
            case 5:
                nameOfDay = "Четверг"
                break;
            case 6:
                nameOfDay = "Пятница"
                break;
            case 7:
                nameOfDay = "Суббота"
                break;
            default:
                break;
            }
            
            let id = "\(model.daily[i].weather[0].id)"
            let day = nameOfDay
            let roundedTempMin = "\(Int(round(model.daily[i].temp.min)).description)º"
            let roundedTempMax = "\(Int(round(model.daily[i].temp.max)).description)º"

            let icon = model.daily[i].weather[0].icon
            let description = model.daily[i].weather.description
            let main = model.daily[i].weather[0].main
            
            self.data.append(Data(id: id, day: day, tempMin: roundedTempMin, tempMax: roundedTempMax, icon: icon, description: description, main: main))
        }
    }
}
