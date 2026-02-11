import SwiftUI

struct ChatView: View {
    
    let user: ChatUser
    let messages = Chats.chats
    let currentUser = "alfa"
    
    @Environment(\.dismiss) var dismiss
    
    @State private var message = ""
    @State private var showAlert = false
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            // Header
            HStack(spacing: 12) {
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                }
                
                Image(systemName: user.avatar)
                
                Text(user.name)
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
            }
            .font(.title3)
            .fontWeight(.bold)
            .padding()
            
            Divider()
            
            
            // Messages
            List(messages) { msg in
                
                HStack {
                    
                    if msg.sender == currentUser {
                        
                        Spacer()
                        
                        Text(msg.message)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                        
                    } else {
                        
                        Text(msg.message)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(12)
                        
                        Spacer()
                    }
                }
                .listRowSeparator(.hidden)
                .listRowBackground(Color.clear)
            }
            .listStyle(.plain)
            
            
            // Input bar
            HStack {
                
                TextField("Enter message", text: $message)
                    .padding(10)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                
                Button {
                    showAlert = true
                } label: {
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(.blue)
                }.disabled(message.isEmpty)
            }
            .padding()
        }
        .toolbar(.hidden, for: .navigationBar)
        
        .alert("Not implemented bro 😄",
               isPresented: $showAlert) {
            Button("OK", role: .cancel) {}
        }
    }
}
