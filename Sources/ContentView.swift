import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            swatch(title: "系统红", color: .red)
            swatch(title: "强调色", color: .accentColor)
            swatch(title: "窗口背景", color: Color(nsColor: .windowBackgroundColor))
        }
        .padding()
    }

    private func swatch(title: String, color: Color) -> some View {
        HStack {
            color
                .frame(width: 140, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text(title)
            Spacer()
        }
    }
}
