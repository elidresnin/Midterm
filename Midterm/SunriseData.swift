//
//  SunriseData.swift
//  Midterm
//
//  Created by Eli Dresnin (student LM) on 1/26/24.
//

import SwiftUI


struct Sunrise: Codable{
    var results: Results = Results()
    var status: String = "test"
}
struct Results: Codable {
    var date: String = "date"
    var sunrise: String = "sunrise"
    var sunset: String = "sunset"
}



class SunriseData: ObservableObject {
    @Published var sunriseData: Sunrise = Sunrise()
    func loadData() async {
        let urlString = "https://api.sunrisesunset.io/json?lat=38.907192&lng=-77.036873"
        
        guard let url = URL(string: urlString) else {return}
        
        guard let (data, _) = try? await URLSession.shared.data(from: url) else {return}
        guard let decoded = try? JSONDecoder().decode(Sunrise.self, from: data) else {return}
        sunriseData = decoded
    }
}
