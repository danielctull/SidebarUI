
import SwiftUI

fileprivate struct SizeKey: PreferenceKey {
    static var defaultValue = CGSize.zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}

extension View {

    func measure(_ block: @escaping (CGSize) -> Void) -> some View {
        background(GeometryReader { proxy in
            Color.clear
                .preference(key: SizeKey.self, value: proxy.size)
                .onPreferenceChange(SizeKey.self, perform: block)
        })
    }
}
