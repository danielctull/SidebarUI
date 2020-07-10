
import Combine
import SwiftUI

public struct SidebarView<Leading: View, Content: View, Trailing: View>: View {

    @State var showLeading: Bool = true
    @State var showTrailing: Bool = true

    let leading: Leading
    let trailing: Trailing
    let content: Content

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
        HStack {
            leading
            content
            trailing
        }
//        .toolbar {
//            ToolbarItem(placement: .navigationBarLeading) {
//                Image(systemName: "sidebar.left")
////                Button {
////                    withAnimation { showLeading.toggle() }
////                } label: {
//////                    Image(systemName: "sidebar.left")
////                    Text("Heloo")
////                }
//            }
//        }
    }
}
