//
//  BackgroundView.swift
//  WeatherSwiftUI
//
//  Created by Victor on 19.09.2022.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        let colorScheme = [Color.black,
                           Color(red: 20/255, green: 50/255, blue: 100/255),
                           Color(red: 141/255, green: 87/255, blue: 200/255)]
        
        let gradient = Gradient(colors: colorScheme)
        let linearGradient = LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
        
        let background = Rectangle()
            .fill(linearGradient)
            .blur(radius: 200, opaque: true)
            .edgesIgnoringSafeArea(.all)
        
        return background
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
