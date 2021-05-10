//
//  ContentView.swift
//  BloodSugarTracker_2
//
//  Created by Tigran Kurkchiyants on 5/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                ChartView()
                    .tabItem {
                        Image(systemName: "chart.bar.xaxis")
                        Text("Statistics")
                    }
                GearView()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
            }
            .accentColor(Color("tabBlue"))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

