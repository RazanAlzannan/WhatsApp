//
//  Settings.swift
//  WhatsApp
//
//  Created by Razan Mohammed Alzannan on 30/10/1444 AH.
//

import SwiftUI

struct Settings: View {
    var body: some View {
    
        VStack{
            HStack{
                Image("Image 6")
                    .resizable()
                    .frame (width: 70, height: 70, alignment: .center)
                    .cornerRadius(50).clipped()
                    .padding(.trailing)
                VStack (alignment: .leading, spacing : 2) {
                    Text("Faisal Mohammed").font(.title)
                    Text("iOS Developer")
                }.padding(.leading, 5)
            }.padding(.leading, -10)
            
            List{
                Section{
                    Field(text0 : "Starred Messages", image0 :"star" )
                    Field(text0 : "Whatsapp Web/Desktop", image0 :"desktopcomputer" )
                    
                }
                Section{
                    
                    Field(text0 : "Account", image0 :"person" )
                    Field(text0 : "Chats", image0 :"bubble.left.and.bubble.right" )
                    Field(text0 : "Notification", image0 :"bell" )
                    Field(text0 : "Data and storage usage", image0 :"arrow.up.arrow.down" )
                }
                Section{
                    
                    Field(text0 : "Help", image0 :"info.circle" )
                    Field(text0 : "Tell a Friend", image0 :"suit.heart" )
                    
                }
                
            }
            
        }
    }
    
}

struct Field : View{
        var text0 : String
        var image0: String
        var body: some View {
            HStack{
                Image(systemName: image0)
                Text(text0).padding()
            }.frame(height: 40)
            
        }}

    struct Settings_Previews: PreviewProvider {
        static var previews: some View {
            Settings()
            //            .environmentObject(Chats())
        }
    }
