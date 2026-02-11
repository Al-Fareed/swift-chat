import SwiftUI

struct ContentView: View {
    
    @Binding var isUserLoggedIn: Bool
    
    var body: some View {
        
        NavigationStack {
            
            if isUserLoggedIn {
                HomeView(isUserLoggedIn: $isUserLoggedIn)
            } else {
                LoginScreen(isUserLoggedIn: $isUserLoggedIn)
            }
        }
    }
}

#Preview {
    ContentView(isUserLoggedIn: .constant(false))
}
