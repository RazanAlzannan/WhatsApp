//
//  SearchView.swift
//  WhatsApp
//
//  Created by Razan Mohammed Alzannan on 30/10/1444 AH.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        
        VStack{

                HStack {
                    Image(systemName: "magnifyingglass")
                    
                    TextField("Search", text: $searchText)
                        .foregroundColor(.primary)
                    
                    Button(action: {
                        self.searchText = ""
                    }) {
                        Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
                    }
                }
                .padding(15)
                .foregroundColor(.secondary)
                .background(Color("color_bg_inverted").opacity(0.05))
                .clipShape(Capsule())
            
        }
        .padding(.vertical)
    }
}

//struct SearchView_Previews: PreviewProvider {
//    @Binding var searchText: String
//    static var previews: some View {
//        SearchView( searchText: $searchText )
//    }
//}
