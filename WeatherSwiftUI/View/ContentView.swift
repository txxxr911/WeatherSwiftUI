//
//  ContentView.swift
//  WeatherSwiftUI
//
//  Created by Victor on 19.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var networkManager = NetworkManager()
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                HeaderView(data: networkManager.currentWeather)
                
                Spacer()
                
                CurrentWeatherView(data: networkManager.currentWeather)
                    .padding([.leading, .trailing])
                
                Spacer()
                
            }
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
