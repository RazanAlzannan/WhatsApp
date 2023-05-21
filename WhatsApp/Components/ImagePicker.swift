//
//  ImagePicker.swift
//  WhatsApp
//
//  Created by Razan Mohammed Alzannan on 30/10/1444 AH.
//

import SwiftUI
import PhotoLibraryPicker

struct ImagePicker: View {
    @State var showActionSheet: Bool = false
//   @State var pictures = [Picture](https://raw.github.com/moifort/swiftUI-photo-library-picker/master/)

       var body: some View {
//           VStack {
//               Button(action: {self.showActionSheet.toggle()}) {
//                   Image(systemName: "plus")
//                       .padding()
//                       .background(Color.secondary)
//                       .mask(Circle())
//               }.sheet(isPresented: self.$showActionSheet) {PhotoLibraryPicker(self.$pictures)}
//               List {
////                   ForEach(pictures) { picture in
////                       picture.toImage() // You can fix the size by default width: 100, height: 100
//                   }
//               }
//           }
           Text("k")
       }
}

struct ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ImagePicker().environment(\.colorScheme, .dark)
            ImagePicker()}
    }
}
