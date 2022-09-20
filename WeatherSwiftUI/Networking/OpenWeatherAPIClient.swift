//
//  NetworkManager.swift
//  WeatherSwiftUI
//
//  Created by Victor on 19.09.2022.
//

import Foundation

class OpenWeatherAPIClient {
    
    var didGetWeatherData: ((WeatherData) -> Void)?
    
    func getWeather(didGetWeather: @escaping (WeatherData) -> Void) {
        
        self.didGetWeatherData = didGetWeather
        let coords = Coordinate(lattitude: 55.7522, longtitude: 37.6156)
        
        
        let session = URLSession.shared
        let url = URL(string: "https://api.openweathermap.org/data/2.5/onecall?lat=\(coords.lattitude.description)&lon=\(coords.longtitude.description)&exclude=hourly,minutely&appid=7abeda366e4002cda136605b3298b4fc&units=metric&lang=ru")!
        
        let request = session.dataTask(with: url) { (data, response, error) in
        guard error == nil else {
            print("Data task error: \(error!.localizedDescription)")
            return
    }
            do {
                
               let weatherData = try JSONDecoder().decode(WeatherData.self, from: data!)
                
                    self.didGetWeatherData?(weatherData)

            } catch  {
                print(error)
            }
        }
        request.resume()
    }
}
