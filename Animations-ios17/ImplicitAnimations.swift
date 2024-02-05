// https://www.hackingwithswift.com/books/ios-swiftui/creating-implicit-animations

import SwiftUI

struct ImplicitAnimations: View {
    @State private var animationAmount = 1.0

    var body: some View {
        Button("Tap me") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.default, value: animationAmount)
    }
}

#Preview {
    ImplicitAnimations()
}
