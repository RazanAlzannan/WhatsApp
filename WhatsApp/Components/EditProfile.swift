//
//  EditProfile.swift
//  WhatsApp
//
//  Created by Razan Mohammed Alzannan on 30/10/1444 AH.
//

import SwiftUI

struct EditProfile: View {
    var body: some View {
        NavigationStack{
            VStack{
                
                HStack{
                    
                        Image("Image 12")
                            .resizable()
                            .frame (width: 80, height: 70, alignment: .leading)
                            .cornerRadius(50).clipped()
                            .padding(.leading, 20)
                        VStack (alignment: .leading, spacing : 2) {
                            Text("Enter your name and add an optional profile picture").font(.system(size: 15)).foregroundColor(.gray)
                        }.padding(.leading, 5)
                    }.padding(.leading, -10)
                
                
                Divider().padding([.top, .leading],20).foregroundColor(.gray)
                Text("Your Name (for notification)").font(.system(size: 19)).foregroundColor(.gray)
                Divider().padding(.leading,20).foregroundColor(.gray)
                NavigationLink("Continue"){
                   MainView()
                }
                .padding(.bottom,480)
                
            }
             
            
        }.navigationTitle("Edit Profile")
    }
}

struct EditProfile_Previews: PreviewProvider {
    static var previews: some View {
        EditProfile()
    }
}
