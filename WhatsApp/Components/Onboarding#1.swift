//
//  Onboarding#1.swift
//  WhatsApp
//
//  Created by Razan Mohammed Alzannan on 30/10/1444 AH.
//

import SwiftUI

struct Onboarding_1: View {
    var body: some View {
        
        NavigationStack {
            VStack{
                Spacer()
               
                Image("Image 5").resizable().frame(width: 100, height: 100).shadow(radius: 7)
                
                Spacer()
                NavigationLink("from"){
                    Onboarding_2()
                }
                    .foregroundColor(.gray)
                    .bold()
               
                Image("Image").resizable().frame(width: 85,height: 25).padding(.bottom,70)
                    
            }
        }
    }
}

struct Onboarding_1_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_1()
    }
}
