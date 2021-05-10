//
//  ChartView.swift
//  BloodSugarTracker_2
//
//  Created by Tigran Kurkchiyants on 5/6/21.
//

import SwiftUI
import SwiftUICharts

struct ChartView: View {
    var body: some View {
        ZStack {
            Color("tabBlue")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                ScrollView {
                    
                        LineChartView(data: [45, 54, 53, 101, 88, 134, 132, 85, 60, 166, 120, 56, 68, 44, 80], title: "Blood Glucose, mg/dL", legend: "May, 2021", form: ChartForm.extraLarge, rateValue: nil, dropShadow: false)
                        
                    LineChartView(data: [3.5, 4.3, 4.2, 1.8, 6.1, 0.72, 0.79, 0.9, 1.9, 1.5, 1.7, 0.77, 0.6, 0.45, 2.7], title: "Activity, miles", legend: "May, 2021", form: ChartForm.extraLarge, rateValue: nil, dropShadow: false)
                        
                        LineChartView(data: [16, 11, 11, 9, 6, 7, 20, 35, 60, 33, 8, 14, 16, 40, 23], title: "Exercise, minutes", legend: "May, 2021", form: ChartForm.extraLarge, rateValue: nil, dropShadow: false)
                    
                    
                }.frame(height: 680)
            
            }
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
