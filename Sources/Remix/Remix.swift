// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

extension ImageAsset {
    @available(iOS 13.0, *)
    func asIcon(_ size: CGFloat = 18.0) -> some View {
        self.swiftUIImage
            .renderingMode(.template)
            .resizable().scaledToFit().frame(width: size, height: size)
            .foregroundStyle(.primary)
    }
}

#Preview {
    VStack {
        RemixIcons.Document.receiptLine.asIcon()
    }
}
