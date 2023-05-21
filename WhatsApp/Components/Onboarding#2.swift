//
//  Onboarding#2.swift
//  WhatsApp
//
//  Created by Razan Mohammed Alzannan on 30/10/1444 AH.
//

import SwiftUI

struct Onboarding_2: View {
    var body: some View {
        VStack{
            Image("Image 1").resizable().frame(width: 350, height: 350)
            Text("Welcome to WhatsApp").bold().padding(.top,60).font(.system(size: 28))
            
            
            Text("Read our Privacy Policy.Tap 'Agree & conitue' to accept the Terms of Service.")
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,34)
                .padding(.vertical,1)
                .font(.system(size: 15))
            
            NavigationLink("Agree & Continue"){
                PhoneNumber()
            }.foregroundColor(Color.blue)
                .font(.system(size: 25)).padding(.top,70)
        }
    }
}

struct Onboarding_2_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_2()
    }
}
