//
//  HomeView.swift
//  Midterm
//
//  Created by Eli Dresnin (student LM) on 1/26/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
       Image("sunrisepic")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
