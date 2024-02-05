// https://www.hackingwithswift.com/books/ios-swiftui/animating-gestures

import SwiftUI

struct AnimatingGestures: View {
    @State private var dragAmount = CGSize.zero

    var body: some View {
        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 150, height: 100)
            .clipShape(.rect(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged { dragAmount = $0.translation }
                    .onEnded { _ in
                        withAnimation(.bouncy) {
                            dragAmount = .zero
                        }
                    }
            )
        // .animation(.bouncy, value: dragAmount)
    }
}

#Preview {
    AnimatingGestures()
}
