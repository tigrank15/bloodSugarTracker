//
//  HomeView.swift
//  BloodSugarTracker_2
//
//  Created by Tigran Kurkchiyants on 5/6/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("tabBlue")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(Color.white)
                        .frame(width: 350, height: 280)
                    VStack {
                        HStack {
                            Image(systemName: "bell.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 28, height: 28)
                                .foregroundColor(Color("tabBlue"))
                                .padding(.horizontal, 30)
                            
                                Spacer()
                                
                            Text("04 May 2021, 18:21")
                                .font(.system(size: 18, weight: .semibold, design: .default))
                                .foregroundColor(Color("tabBlue"))
                                .mask(Color("tabBlue").opacity(0.7))
                                .padding(.horizontal, 35)
                        }.padding(.top, 60)
                        Spacer()
                        HStack {
                            Text("Welcome back, Tigran")
                                .font(.system(size: 43, weight: .bold, design: .default))
                        }.padding(.bottom, 70)
                    }
                    
                }
                
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(Color.white)
                        .frame(width: 350, height: 370)
                    VStack(alignment: .leading) {
                        
                        HStack {
                            Text("Today")
                                .font(.system(size: 34, weight: .heavy, design: .default))
                            Spacer()
                        }.padding(30)
                        Spacer()
                            
                        
                        
                        HStack{
                            
                            Image(systemName: "drop.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color("bloodColor"))
                                
                            VStack(alignment: .leading) {
                                Text("80 mg/dL")
                                    .font(.system(size: 24, weight: .semibold, design: .default))
                                Text("Last updated: 16:44")
                                    .font(.system(size: 16, weight: .thin, design: .default))
                            }
                        }
                        
                        HStack{
                            
                            Image("outdoorwalk_112px_Normal")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            VStack(alignment: .leading) {
                                Text("4.55 mi")
                                    .font(.system(size: 24, weight: .semibold, design: .default))
                                Text("Last updated: 18:20")
                                    .font(.system(size: 16, weight: .thin, design: .default))
                            }
                        }
                        
                        HStack{
                            Image("outdoorrun_56px_Normal")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color("tabBlue"))
                            
                            VStack(alignment: .leading) {
                                Text("31 min")
                                    .font(.system(size: 24, weight: .semibold, design: .default))
                                Text("Last updated: 18:20")
                                    .font(.system(size: 16, weight: .thin, design: .default))
                            }
                        }
                        Spacer()
                        Spacer()
                        Spacer()
                        
                    }
                }
                
            }
            .padding()
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
