//
//  PhoneNumber.swift
//  WhatsApp
//
//  Created by Razan Mohammed Alzannan on 30/10/1444 AH.
//

import SwiftUI

struct PhoneNumber: View {
    @State var presentCountryChoice = false
    var body: some View {
        VStack(alignment: .leading) {
                        
                        Text("Please confirm your country code and enter your phone number ")
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .padding(.vertical, 19)
                            .padding(.horizontal, 42)
                        
                        Divider().offset(y: -10)
            VStack (alignment: .leading) {
                
                Button(action: {
                    
                }, label: {
                    HStack {
                        Text("Saudi Arabia")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                            .padding(.trailing, 16)
                    }
                })
                
                Rectangle()
                    .frame(height: 1.0, alignment: .bottom)
                    .foregroundColor(Color.gray.opacity(0.35))
                    .padding(.top, 0)

                HStack {
                                        Text("+966")
                                            .font(Font.system(size: 20, weight: .light, design: .default)).padding(.trailing, 29)
                                        
                                        Rectangle()
                                            .frame(width: 1.0, height: 46, alignment: .trailing)
                                            .foregroundColor(Color.gray.opacity(0.35))
                                        
                                        Text("Phone Number")
                                            .padding(.horizontal, 16).keyboardType(.phonePad)
                                            .font(Font.system(size: 20, weight: .light, design: .default))
                                        
                                    }.offset(y: -10)
                
            }
                           .padding(.leading, 16)
                           .padding(.top, -5)
            Divider().offset(y: -24).padding(.leading, 18)
                           Spacer()
            NavigationLink("Continue"){
              EditProfile()
            }
            .padding(.bottom,520)
            .foregroundColor(.blue).padding(.horizontal, 150)
            
            
    } .navigationTitle("Enter you Phone Number")
//        .navigationBarItems()
        
    }
}

struct PhoneNumber_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumber()
    }
}

struct TrailingMenu: View {
    
    @State var presentDashboard: Bool = false
    
    var body: some View {
        Button("Done", action: {
            self.presentDashboard.toggle()
        })
        .fullScreenCover(isPresented: $presentDashboard, content: {
            MainView()
        })
    }
    
}
