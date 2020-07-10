
import SidebarUI
import SwiftUI

@main
struct SidebarApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                SidebarView {
                    Text("CONTENT")
                } leading: {
                    Text("LEADING")
                } trailing: {
                    Text("TRAILING")
                }
            }
        }
    }
}
