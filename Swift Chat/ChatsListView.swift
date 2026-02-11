
import SwiftUI
import Foundation

struct ChatsView: View {
    
    // Mock users
    let users = Data.users
    
    var body: some View {
        
        NavigationStack {
            
            List(users) { user in
                
                let textColor = user.isMessageRead
                ? Color.primary
                : Color.blue
                
                NavigationLink{
                    ChatView()
                }label:{
                    HStack(spacing: 12) {
                        
                        Image(systemName: user.avatar)
                            .resizable()
                            .frame(width: 50, height: 50)
    //                        .foregroundColor(.blue)
    //                        .background( Color.blue.opacity(0.2))
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading, spacing: 6) {
                            
                            Text(user.name)
                                .font(
                                    user.isMessageRead
                                    ? .headline
                                    : .headline.bold()
                                )
                            
                            Text(user.lastMessage)
                                .font(.subheadline)
                                .lineLimit(1)
                        }
                        .foregroundColor(textColor)
                        
                        
                        Spacer()
                        
                        VStack {
                            
                            Text(formatDate(user.lastMsgDateTime))
                                .font(.caption)
                                .foregroundColor(textColor)
                            
                            Spacer()
                        }
                    }
                }
                .padding(.vertical, 6)
                
                // Row background highlight
                .listRowBackground(
                    user.isMessageRead
                    ? Color.clear
                    : Color.blue.opacity(0.08)
                )
            }
            .listStyle(.plain)
        }
    }
    
    
    // MARK: - Date Formatter
    
    func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        return formatter.string(from: date)
    }
}
