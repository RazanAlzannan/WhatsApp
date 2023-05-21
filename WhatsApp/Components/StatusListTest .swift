//
//  Status .swift
//  WhatsApp
//
//  Created by Razan Mohammed Alzannan on 30/10/1444 AH.
//

import SwiftUI

struct Status_: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        //                        VStack{
        //
        //                            SingleStatus(image: "Image 6", name: "Ahmad",time: "14 m")
        //                            SingleStatus(image: "Image 6", name: "Saleh",time: "40 m")
        //                            SingleStatus(image: "Image 6", name: "Fahad",time: "1 hour")
        //                            SingleStatus(image: "Image 6", name: "Mubarak",time: "2 hours")
        //                            SingleStatus(image: "Image 6", name: "Hamad",time: "3 hours")
        //
        //                        }.listStyle(GroupedListStyle())
    }
}

struct Status__Previews: PreviewProvider {
    static var previews: some View {
        Status_()
    }
}

struct SingleStatus : View{
    var image : String
    var name : String
    var time : String
    var body: some View{
        
        ZStack(alignment: .leading) {
            
            HStack {
                
                Circle()
                    .stroke(Color.blue, style: StrokeStyle(lineWidth: 2, lineCap: .round, dash:[15, 15]))
                    .frame(width: 58, height: 58).background(
                        Image(image)
                            .resizable()
                            .frame(width: 54, height: 54)
                            .cornerRadius(54/2))
                
                VStack(alignment: .leading) {
                    Text(name)
                        .foregroundColor(.primary)
                        .font(.system(size: 16, weight: .semibold)).padding(.bottom, 4)
                    Text(time)
                        .foregroundColor(.secondary)
                        .font(.system(size: 14, weight: .regular))
                }.padding(.leading, 9)
                
            }
            NavigationLink(""){
                StatusVedio()}
            
        }.padding(.vertical, 9)
        Divider()
    }
}


