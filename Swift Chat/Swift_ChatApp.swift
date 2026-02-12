import SwiftUI

@main
struct Swift_ChatApp: App {
    
    @AppStorage("isUserLoggedIn") var isUserLoggedIn: Bool = false
    
    var body: some Scene {
        WindowGroup {
            ContentView(isUserLoggedIn: $isUserLoggedIn)
        }
    }
}
