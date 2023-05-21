//
//  ListofChats.swift
//  WhatsApp
//
//  Created by Razan Mohammed Alzannan on 30/10/1444 AH.
//

import SwiftUI

struct ListofChats: View {
    
    @State var searchText: String = ""
    
    let users = ["Sara", "Maha", "Saleh", "Fahad", "Khalid","Mubarak"]
    let messages = [
        ["user":"Sara", "message":"Hi there, How's your work ? did you completed that cross platform app ? ", "time": "10:30 AM"],
        ["user":"Maha", "message": "Are you available tomorrow at 3:30 pm ? i'd like to discuss about our new project", "time": "12:45 AM"],
        ["user":"Saleh", "message": "Hey, is there any update for morning stand up meeting tomorrow ?", "time": "12:15 PM"],
        ["user":"Khalid", "message": "Wow, awesome! Thank you so much for your effort", "time": "4:30 AM"],
        ["user":"Mubarak", "message": "Yeah, Let's meet tomrrow evening 5:30pm at coffe shop", "time": "8:17 AM"]]
    var body: some View {
        
            ZStack{
                Color("").edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                    HStack{
                        Text("Chats")
                            .fontWeight(.semibold)
                            .font(.largeTitle)
                        Spacer()
                        
                    }
                    HStack{
                        SearchView(searchText: $searchText)
                        Image(systemName: "line.3.horizontal.decrease")
                            .foregroundColor(.gray)
                            .font(.title2)
                    }
                    Divider()
                        .padding(.bottom, 10)
                        .foregroundColor(.gray)
                    
                    
                    
                    ScrollView(showsIndicators: true){
                        VStack(alignment: .leading, spacing: 5){
                            
                            VStack(){
                             
                                    ForEach(messages, id: \.self) { message in
                                      
                                        
                                            ChatItem(
                                                userImage: String(describing: message["user"]!),
                                                userName: String(describing: message["user"]!),
                                                message: String(describing: message["message"]!),
                                                time: String(describing: message["time"]!)
                                            )
                                        
                                    
                                }
                                
                            }
                            
                        }
                    }
                }
                .padding(.top)
                .padding(.horizontal)
            }
        }
    }

struct ListofChats_Previews: PreviewProvider {
    static var previews: some View {
        ListofChats()
    }
}
