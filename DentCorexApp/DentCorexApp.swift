import SwiftUI

@main
struct DentCorexApp: App {
    @State private var loggedInRole: UserRole? = nil

    var body: some Scene {
        WindowGroup {
            if let role = loggedInRole {
                MainView(role: role)
            } else {
                LoginView(onLogin: { role in
                    self.loggedInRole = role
                })
            }
        }
    }
}
