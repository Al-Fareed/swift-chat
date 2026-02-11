import SwiftUI

struct Profile: View {
    
    @Binding var isUserLoggedIn: Bool
    let currentUser = Data.currentUser
    
    var body: some View {
        
        VStack {
            
            ZStack {
                Circle()
                    .fill(Color.gray.opacity(0.2))
                    .frame(width: 140, height: 140)
                
                Image(systemName: "person.fill")
                    .font(.system(size: 100))
            }
            
            Text(currentUser.name)
                .font(.title)
                .fontWeight(.bold)
            
            
            List {
                
                NavigationLink {
                    AccountSettings()
                } label: {
                    Label("Account Settings", systemImage: "gear")
                }
                
                NavigationLink{
                    Help()
                }label: {
                    Label("Help", systemImage: "questionmark.circle")
                }
                
                NavigationLink{
                    Privacy()
                }label: {
                    Label("Privacy", systemImage: "lock")
                }
                
            }
            .listStyle(.plain)
            
            Button {
                isUserLoggedIn = false
            } label: {
                HStack {
                    Spacer()
                    Image(systemName: "power")
                    Text("Logout")
                    Spacer()
                }
                .padding()
            }
            .foregroundColor(.red)
        }
    }
}
