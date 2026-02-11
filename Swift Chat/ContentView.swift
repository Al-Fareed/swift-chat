
import SwiftUI

struct ContentView: View {
    var isUserLoggedIn : Bool = true
    var body: some View{
        if isUserLoggedIn {
            HomeView()
        }else{
            LoginScreen()
        }
        
    }
}

#Preview {
    ContentView()
}
