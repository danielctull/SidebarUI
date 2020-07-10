
import SidebarUI
import SwiftUI

@main
struct SidebarApp: App {
    var body: some Scene {
        WindowGroup {
//            NavigationView {
                SidebarView {
                    Text("CONTENT")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.yellow)
                } leading: {
                    Text("LEADING")
                        .padding(30)
                        .frame(maxHeight: .infinity)
                        .background(Color.blue)
                } trailing: {
                    Text("TRAILING")
                        .padding(30)
                        .frame(maxHeight: .infinity)
                        .background(Color.orange)
                }
//            }
////            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
