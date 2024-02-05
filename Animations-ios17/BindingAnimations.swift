// https://www.hackingwithswift.com/books/ios-swiftui/animating-bindings

import SwiftUI

struct BindingAnimations: View {
    @State private var animationAmount = 1.0

    var body: some View {
        print(animationAmount)

        return VStack {
            Spacer()
            Spacer()

            Stepper("Scale amount", value: $animationAmount.animation(
                .easeInOut(duration: 1)
                    .repeatCount(3, autoreverses: true)
            ), in: 1 ... 10)
                .padding(50)

            Spacer()

            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)

            Spacer()
            Spacer()
        }
    }
}

#Preview {
    BindingAnimations()
}
