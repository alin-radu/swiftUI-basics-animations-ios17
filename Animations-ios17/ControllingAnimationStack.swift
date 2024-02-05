// https://www.hackingwithswift.com/books/ios-swiftui/controlling-the-animation-stack

import SwiftUI

struct ControllingAnimationStack: View {
    @State private var enabled = false

    var body: some View {
        Button("Tap me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .green : .red)
        .foregroundStyle(.white)
        // .animation(nil, value: enabled)
        .animation(.default, value: enabled)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.spring(duration: 1, bounce: 0.7), value: enabled)
    }
}

#Preview {
    ControllingAnimationStack()
}
