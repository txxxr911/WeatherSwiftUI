//
//  NetworkManager.swift
//  WeatherSwiftUI
//
//  Created by Victor on 19.09.2022.
//

import Foundation
import Combine

class NetworkManager {

    var didChange = PassthroughSubject<NetworkManager, Never>()

    var currentWeather = CurrentWeatherViewModel() {
        didSet {
            didChange.send(self)
        }
    }

    var dailyWeather = DailyWeatherViewModel() {
        didSet {
            didChange.send(self)
        }
    }

    let client = OpenWeatherAPIClient()

    init() {
        client.getWeather { weatherData in
            self.currentWeather = CurrentWeatherViewModel(model: weatherData)
            self.dailyWeather = DailyWeatherViewModel(model: weatherData)
        }
        }
}
                        
