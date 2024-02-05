// https://www.hackingwithswift.com/books/ios-swiftui/showing-and-hiding-views-with-transitions

import SwiftUI

struct ShowingHidingWithTransitions: View {
    @State private var isShowingRed = false

    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }

            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
                    // .transition(.scale)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

#Preview {
    ShowingHidingWithTransitions()
}
