//
//  SunriseView.swift
//  Midterm
//
//  Created by Eli Dresnin (student LM) on 1/26/24.
//

import SwiftUI

struct SunriseView: View {
    @StateObject var sunriseData: SunriseData = SunriseData()
    var body: some View {
        VStack{
            Text("Date: \(sunriseData.sunriseData.results.date)")
                .task {
                    await sunriseData.loadData()
                }
            Text("Sunrise: \(sunriseData.sunriseData.results.sunrise)")
                .task {
                    await sunriseData.loadData()
                }
            Text("Sunset: \(sunriseData.sunriseData.results.sunset)")
                .task {
                    await sunriseData.loadData()
                }
        }
    }
}

struct SunriseView_Previews: PreviewProvider {
    static var previews: some View {
        SunriseView()
    }
}
