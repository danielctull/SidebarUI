
import Combine
import SwiftUI

public struct SidebarView<Leading: View, Content: View, Trailing: View>: View {

    @State private var showLeading = true
    @State private var showTrailing = true
    @State private var leadingSize = CGSize.zero
    @State private var trailingSize = CGSize.zero

    private let leading: Leading
    private let trailing: Trailing
    private let content: Content

    public init(
        @ViewBuilder content: () -> Content,
        @ViewBuilder leading: () -> Leading,
        @ViewBuilder trailing: () -> Trailing
    ) {
        self.content = content()
        self.trailing = trailing()
        self.leading = leading()
    }

    public var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation { showLeading.toggle() }
                } label: {
                    Image(systemName: "sidebar.left")
                }
                Spacer()
                Button {
                    withAnimation { showTrailing.toggle() }
                } label: {
                    Image(systemName: "sidebar.right")
                }
            }
            .padding()

            main
        }
    }

    @ViewBuilder
    var main: some View {

        ZStack {

            HStack {
                leading
                    .measure { leadingSize = $0 }
                Spacer()
            }

            HStack {
                Spacer()
                trailing
                    .measure { trailingSize = $0 }
            }

            content
                .padding(.leading, showLeading ? leadingSize.width : 0)
                .padding(.trailing, showTrailing ? trailingSize.width : 0)
        }
    }
}
