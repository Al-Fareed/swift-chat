//
//  ChatView.swift
//  Swift Chat
//
//  Created by Al-Fareed on 10/02/26.
//
import SwiftUI

struct ChatView: View {
    
    let messages = Chats.chats
    let currentUser: String = "alfa"
    
    @State private var message = ""
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            // MARK: - Header
            
            HStack {
                
                Image(systemName: "person.fill")
                
                Text("Test User")
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
            }
            .font(.title2)
            .fontWeight(.bold)
            .padding()
            
            Divider()
            
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
            
            HStack{
                TextField("Enter Message",text:$message)
                Button{
                    
                }label: {
                    Image(systemName: "paperplane.fill")
                }
            }.padding()
        }
    }
    
    func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        return formatter.string(from: date)
    }
}


#Preview {
    ChatView()
}
