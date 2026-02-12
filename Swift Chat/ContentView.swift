import SwiftUI

struct ContentView: View {
    
    @Binding var isUserLoggedIn: Bool
    
    var body: some View {
        
        if isUserLoggedIn {
            NavigationStack {
                HomeView(isUserLoggedIn: $isUserLoggedIn)
            }
        } else {
            NavigationStack {
                LoginScreen(isUserLoggedIn: $isUserLoggedIn)
            }
        }
    }
}

#Preview {
    ContentView(isUserLoggedIn: .constant(false))
}
