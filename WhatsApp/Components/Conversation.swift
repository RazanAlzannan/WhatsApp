//
//  Conversation.swift
//  WhatsApp
//
//  Created by Razan Mohammed Alzannan on 30/10/1444 AH.
//

import SwiftUI

struct Conversation: View {
    @State private var messageText = ""
    @State var messages: [String] = ["Welcome to Chat Bot 2.0"]
    var body: some View {
        
        NavigationView{
            
            
            VStack{
                
                
                ScrollView{
                    ForEach (messages, id: \.self) { message in
                        if message.contains ("[USER]") {
                            let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                            HStack{
                                Spacer()
                                Text(newMessage)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background( .blue.opacity(0.8))
                                    .padding (.horizontal, 16)
                                    .padding (.bottom, 10)
                            }
                        }
                        else{
                            HStack {
                                Text(message)
                                    .padding()
                                    .background(.gray.opacity(0.15))
                                    .cornerRadius (10)
                                    .padding (.horizontal, 16)
                                    .padding (.bottom, 10)
                                Spacer()
                            }
                            
                        }
                    }.rotationEffect(.degrees(180))
                }.rotationEffect(.degrees(180))
                
                
                HStack {
                    NavigationLink{
                            Location()
                        } label: {
                        Image (systemName: "plus")
                        .font(.system (size: 26))
                        .padding (.horizontal, 1)
                                            }.padding()
                    TextField("Type something", text: $messageText)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius (10)
                        .onSubmit{
                            sendMessage(message: messageText)}
                    
                            Button {
                                sendMessage(message: messageText)
                            } label: {
                                Image (systemName: "paperplane.fill")
                                    .font(.system (size: 26))
                                    .padding (.horizontal, 1)
                                
                            }.padding()
                  
                    
                    NavigationLink{
                            ImagePickerView()
                    } label: {
                        Image(systemName: "camera")
                            .resizable().foregroundColor(.gray)
                            .padding(.trailing,2)
                        .frame(width: 40,height: 30)
                        
                    }
                                    
                                
                            }.padding([.bottom, .trailing], 10)
                        }
                    
                }
            }
        
    
    func sendMessage(message: String) {
        withAnimation{
            messages.append ("[USER]" + message)
            self.messageText = ""
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation {
                messages.append(getBotResponse (message: message))}
            
        }
    }
}
        
   
        
 


struct Conversation_Previews: PreviewProvider {
    static var previews: some View {
        Conversation()
    }
}
