//
//  ContentView.swift
//  Midterm
//
//  Created by Eli Dresnin (student LM) on 1/26/24.
//

import SwiftUI

enum ViewState{
    case home, sunrise
}

struct ContentView: View {
    @State var viewState: ViewState = .home
    var body: some View {
        VStack{
            Spacer()
            if viewState == .home{
                HomeView()
            }
            else if viewState == .sunrise {
                SunriseView()
            }
            Spacer()
            HStack {
                Spacer()
                    Button {
                        viewState = .home
                    } label: {
                        VStack {
                        Image(systemName: "house")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                        Text("Home")
                    }
                }
                Spacer()
                Spacer()
                VStack{
                        Button {
                            viewState = .sunrise
                        } label: {
                            VStack {
                            Image(systemName: "cloud.sun")
                                .imageScale(.large)
                                .foregroundColor(.accentColor)
                            Text("Facts")
                        }
                    }
                }
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
