
import SwiftUI
struct Profile : View {
    let currentUser = Data.currentUser
    var body : some View {
        NavigationStack{
            VStack{
                ZStack{
                    Circle().fill(Color.gray.opacity(0.2)).frame(width: 140, height: 140)
                    
                    Image(systemName: "person.fill").font(.system(size:100))
                }
                Text(currentUser.name).fontWeight(.bold).font(.title)
                List{
                    NavigationLink{
                        AccountSettings()
                    }label: {
                        Image(systemName: "gear")
                        Text("Account Settings")
                    }
                   
                    NavigationLink{
                        
                    }label: {
                        Image(systemName: "questionmark.circle")
                        Text("Help")
                    }
                    NavigationLink{
                        
                    }label: {
                        Image(systemName: "lock")
                        Text("Privacy")
                    }
                    
                }.listStyle(.plain)
                
                Button {
//                    logout()
                } label: {
                    
                    HStack {
                        Spacer()
                        
                        Image(systemName: "power")
                        Text("Logout")
                            
                        
                        Spacer()
                    }.fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                }
                .foregroundColor(.red)
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.3)),
                    alignment: .top
                )


            }
        }
    }
}

#Preview{
    Profile()
}
