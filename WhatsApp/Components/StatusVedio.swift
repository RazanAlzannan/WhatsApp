//
//  StatusVedio.swift
//  WhatsApp
//
//  Created by Razan Mohammed Alzannan on 30/10/1444 AH.
//

import SwiftUI
import YouTubePlayerKit
struct StatusVedio: View {
    var body: some View {
        ZStack{
            YouTubePlayerView("https://www.youtube.com/watch?v=JAUoSqUR0Do")
            VStack{
                Text("^")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                Text("Reply").font(.title).foregroundColor(.white)
            }
            .padding(.top,600)
        }
    }
}


struct StatusVedio_Previews: PreviewProvider {
    static var previews: some View {
        StatusVedio()
    }
}

//public enum Stories: IStory {
//
//    case first
//    case second
//    case third
//
//    @ViewBuilder
//    public func builder(progress : Binding<CGFloat>) -> some View {
//        switch(self) {
//        case .first: StoryTpl(self, .green, "1", progress)
//        case .second: StoryTpl(self, .brown, "2", progress)
//        case .third: StoryTpl(self, .purple, "3", progress)
//        }
//    }
//
//    public var duration: TimeInterval {
//        switch self{
//        case .first, .third : return 4
//        default : return 3
//        }
//    }
//
//    public var colorScheme: ColorScheme? {
//        switch(self) {
//        case .first: return .light
//        default: return .dark
//        }
//    }
//
//}
