//
//  ImagePickerView.swift
//  WhatsApp
//
//  Created by Razan Mohammed Alzannan on 01/11/1444 AH.
//

import SwiftUI
import PhotosUI

struct ImagePickerView: View {
    @State var selectedItems: [PhotosPickerItem] = []

        var body: some View {
            PhotosPicker(selection: $selectedItems,
                         matching: .images) {
                Text("Photo Library")
            }
        }
}

struct ImagePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerView()
    }
}
