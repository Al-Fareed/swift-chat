import SwiftUI

struct HomeView: View {
    
    @Binding var isUserLoggedIn: Bool
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            // Header
            HStack {
                
                Text("SWIFT CHAT")
                    .font(.title)
                    .fontWeight(.bold)
                
                Image(systemName: "message.badge.fill.rtl")
                    .font(.title)
                
                Spacer()
                
                NavigationLink {
                    Profile(isUserLoggedIn: $isUserLoggedIn)
                } label: {
                    Image(systemName: "person.circle.fill")
                        .font(.largeTitle)
                        .foregroundStyle(.black)
                }
            }
            .padding()
            
            Divider()
            
            
            // Tabs + Floating Button
            ZStack {
                
                NavigationPane()
                
                VStack {
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        Button {
                            print("New chat")
                        } label: {
                            ZStack {
                                Circle()
                                    .fill(Color.black)
                                    .frame(width: 56, height: 56)
                                
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                    .font(.title2)
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}
