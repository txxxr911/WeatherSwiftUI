//
//  CurrentWeatherView.swift
//  WeatherSwiftUI
//
//  Created by Victor on 19.09.2022.
//

import SwiftUI

struct CurrentWeatherView: View {
    
    let data: CurrentWeatherViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(data.icon)
                    .resizable()
                    .frame(width: 40, height: 40)
                
                Text(data.summary)
                    .font(.title)
                    .fontWeight(.light)
                }.padding(0)
            
            HStack {
                Text(data.temperature)
                    .font(.system(size: 150))
                    .fontWeight(.ultraLight)
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text("WIND SPEED")
                        Spacer()
                        Text(data.windSpeed)
                        }.padding(.bottom, 1)
                    
                    HStack {
                        Text("Summary")
                        Spacer()
                        Text(data.summary)
                        }.padding(.bottom, 1)
                    
                    HStack {
                        Text("PRECIPITATION")
                        Spacer()
                        Text(data.day)
                        }.padding(.bottom, 1)
                    }.font(.caption)
                }.padding(0)
        }
    }
}

//struct CurrentWeatherView_Previews: PreviewProvider {
//    static var previews: some View {
//        CurrentWeatherView()
//    }
//}
