//
//  Status.swift
//  WhatsApp
//
//  Created by Razan Mohammed Alzannan on 30/10/1444 AH.
//

import SwiftUI

struct Status: View {
    
    @State var presentEditImage = false
    @State var presentMediaStatus = false
    @State var presentNoteStatus = false
    
    @State var emptyStatus = false
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ZStack {
                        HStack {
                            
                            Button(action: {
                                self.presentEditImage.toggle()
                            }, label: {
                                ZStack(alignment: .bottomTrailing) {
                                    Image("Image 6")
                                        .resizable()
                                        .frame(width: 58, height: 58)
                                        .cornerRadius(58/2)
                                    
                                    Image(systemName: "plus.circle.fill")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                        .background(Color.white)
                                        .cornerRadius(10)
                                }
                            }).buttonStyle(PlainButtonStyle())
                            
                            VStack(alignment: .leading) {
                                Text("Faisal Mohammed")
                                    .foregroundColor(.primary)
                                    .font(.system(size: 16, weight: .semibold)).padding(.bottom, 4)
                                Text("Add to my status")
                                    .foregroundColor(.secondary)
                                    .font(.system(size: 14, weight: .regular))
                            }.padding(.leading, 9)
                            
                            Spacer()
                            
                            HStack {
                                
                                Button(action: {
                                    self.presentMediaStatus.toggle()
                                }, label: {
                                    Image(systemName: "camera")
                                        .resizable()
                                        .frame(width: 18, height: 15)
                                        .foregroundColor(.blue)
                                        .padding()
                                        .frame(width: 36, height: 36)
                                        .background(Color("LightGray"))
                                        .cornerRadius(36/2)
                                    
                                }).buttonStyle(PlainButtonStyle()).padding(.trailing, 5)
                                
                                Button(action: {
                                    self.presentNoteStatus.toggle()
                                }, label: {
                                    Image(systemName: "pencil")
                                        .resizable()
                                        .frame(width: 18, height: 15)
                                        .foregroundColor(.blue)
                                        .padding()
                                        .frame(width: 36, height: 36)
                                        .background(Color("LightGray"))
                                        .cornerRadius(36/2)
                                    
                                }).buttonStyle(PlainButtonStyle())
                                
                            }
                            
                        }
                        
                        
                    }.padding(.vertical, 9)
                }
                
                
                Section(header: Text("LATEST STATUS")) {
                    
                    ForEach(0..<10) { _ in
                        ZStack(alignment: .leading) {
                            
                            HStack {
                                
                                Circle()
                                    .stroke(Color.blue, style: StrokeStyle(lineWidth: 2, lineCap: .round, dash:[15, 15]))
                                    .frame(width: 58, height: 58).background(
                                        Image("image")
                                            .resizable()
                                            .frame(width: 54, height: 54)
                                            .cornerRadius(54/2))
                                
                                VStack(alignment: .leading) {
                                    Text("Agus Cahyono")
                                        .foregroundColor(.primary)
                                        .font(.system(size: 16, weight: .semibold)).padding(.bottom, 4)
                                    Text("16m ago")
                                        .foregroundColor(.secondary)
                                        .font(.system(size: 14, weight: .regular))
                                }.padding(.leading, 9)
                                
                            }
                            
                            NavigationLink(""){
                                StatusVedio()
                            }.buttonStyle(PlainButtonStyle())
                            
                        }.padding(.vertical, 9)
                  
                    }
                }
                
            }.listStyle(GroupedListStyle())
            //                    .navigationBarItems(leading: privacyBtn())
                .navigationTitle("Status")
//                .navigationBarTitleDisplayMode(.large)
        }
    }
}
   
struct Status_Previews: PreviewProvider {
    static var previews: some View {
        Status()
    }
}


