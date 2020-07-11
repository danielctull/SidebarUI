
import Combine
import SwiftUI

public struct SidebarView<Leading: View, Content: View, Trailing: View>: View {

    private var showLeading: Binding<Bool>
    private var showTrailing: Binding<Bool>
    @State private var leadingSize = CGSize.zero
    @State private var trailingSize = CGSize.zero

    private let leading: Leading
    private let trailing: Trailing
    private let content: Content

    public init(
        showLeading: Binding<Bool>,
        showTrailing: Binding<Bool>,
        @ViewBuilder content: () -> Content,
        @ViewBuilder leading: () -> Leading,
        @ViewBuilder trailing: () -> Trailing
    ) {
        self.showLeading = showLeading
        self.showTrailing = showTrailing
        self.content = content()
        self.trailing = trailing()
        self.leading = leading()
    }

    public var body: some View {
        ZStack {

            leading
                .measure { leadingSize = $0 }
                .align(.leading)

            trailing
                .measure { trailingSize = $0 }
                .align(.trailing)

            content
                .padding(.leading, showLeading.wrappedValue ? leadingSize.width : 0)
                .padding(.trailing, showTrailing.wrappedValue ? trailingSize.width : 0)
        }
    }
}
