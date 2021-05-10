//
//  GearView.swift
//  BloodSugarTracker_2
//
//  Created by Tigran Kurkchiyants on 5/6/21.
//

import SwiftUI

struct GearView: View {
    
    @State private var option = "Once a day"
    var choices = ["Once a day", "Twice a day", "Three times a day"]
    
    
    var body: some View {
        ZStack {
            Color("tabBlue")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(Color.white)
                        .frame(width: 350, height: 500)
                    
                    VStack {
                        HStack {
                            Text("Notification Preferences")
                                .font(.system(size: 35, weight: .bold, design: .default))
                                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                                .padding(.vertical, 70)
                                .padding(.horizontal, 45)
                            Spacer()
                        }.padding(.top, 75)
                        Spacer()
                        Text("Notify the user: \(option.lowercased())")
                            .font(.system(size: 24, weight: .light, design: .default))
                            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        Picker("", selection: $option) {
                            ForEach(choices, id: \.self) { choice in
                                Text(choice)
                            }
                        }
                        Spacer()
                        Spacer()

                    }
                }
                Spacer()
            }
        }
    }
}

struct GearView_Previews: PreviewProvider {
    static var previews: some View {
        GearView()
    }
}
