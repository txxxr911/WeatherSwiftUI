//
//  HeaderView.swift
//  Weather
//
//  Created by Bobby Conti on 6/17/19.
//  Copyright © 2019 Bobby Conti. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    let data: CurrentWeatherViewModel

    var body: some View {
        VStack {
            Text("Moscow").font(.title).fontWeight(.light)
        }
    }
}

//struct HeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeaderView()
//    }
//}
