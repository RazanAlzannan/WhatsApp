//
//  MainView.swift
//  WhatsApp
//
//  Created by Razan Mohammed Alzannan on 30/10/1444 AH.
//

import SwiftUI

struct MainView: View {
    
    @State var selectedIndexTab = 0
    
    var body: some View {
       AllTabView
//        TabView {
//            Chats()
//                .tabItem{
//                    Label("Chats", systemImage: "list.dash")
//                }
//            Camera()
//                .tabItem{
//                    Label("Chats", systemImage: "list.dash")
//            }
//            Status()
//                .tabItem{
//                    Label("Chats", systemImage: "list.dash")
//                }
//            Calls()
//                .tabItem{
//                    Label("Chats", systemImage: "list.dash")
//                }
//            Settings()
//                .tabItem{
//                    Label("Settings",systemImage:"gear" )
//                }
//        }
    }
    
    
    var AllTabView: some View {
           return VStack {
               TabView(selection: $selectedIndexTab) {
                   
                   Status()
                       .tabItem {
                           Image("Image 11")
                               .renderingMode(.template)
                               .foregroundColor(.blue)
                           Text("Status")
                       }.tag(0)
                   
                   Calls()
                       .tabItem {
                           Image("Image 7").renderingMode(.template)
                               .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                           Text("Calls")
                       }.tag(1)
                   
                   Camera()
                       .tabItem {
                           Image("Image 8").renderingMode(.template)
                               .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                           Text("Camera")
                       }.tag(2)
                   
                   ListofChats()
                       .tabItem {
                           Image("Image 9").renderingMode(.template)
                               .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                           Text("Chats")
                       }.tag(3)
                   
                   Settings()
                       .tabItem {
                           Image("Image 10").renderingMode(.template)
                               .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                           Text("Settings")
                       }.tag(4)
                   
               }
               .accentColor(.blue)
               
           }
       }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
