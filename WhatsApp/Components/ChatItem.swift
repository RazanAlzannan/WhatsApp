//
//  ChatItem.swift
//  WhatsApp
//
//  Created by Razan Mohammed Alzannan on 30/10/1444 AH.
//

import SwiftUI

struct ChatItem: View {
    
    var userImage: String = ""
    var userName: String = ""
    var message: String = ""
    var time: String = ""
    
    var body: some View {
      
            
                HStack{
                    
                    NavigationLink(destination: Conversation()){
                    Image(userImage)
                        .resizable()
                        .background( Color(.red).opacity(0.05))
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 8){
                        HStack{
                            Text(userName)
                                .fontWeight(.semibold)
                                .padding(.top, 3)
                            Spacer()
                            Text(time)
                                .foregroundColor(.gray)
                                .padding(.top, 3)
                        }
                        
                        
                        Text(message)
                            .foregroundColor(.black.opacity(0.5))
                            .lineLimit(2)
                        
                        Divider()
                            .padding(.top, 8)
                    }
                    .padding(.horizontal, 10)
                }
                
            }
        }
        
        
    }
    

struct ChatItem_Previews: PreviewProvider {
    static var previews: some View {
        ChatItem()
    }
}
