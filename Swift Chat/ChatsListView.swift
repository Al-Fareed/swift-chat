import SwiftUI

struct ChatsView: View {
    
    let users = Data.users
    
    var body: some View {
        
        List(users) { user in
            
            let textColor =
            user.isMessageRead ? Color.primary : Color.blue
            
            NavigationLink {
                ChatView(user: user)
            } label: {
                
                HStack(spacing: 12) {
                    
                    Image(systemName: user.avatar)
                        .resizable()
                        .frame(width: 50, height: 50)
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
                    
                    Text(formatDate(user.lastMsgDateTime))
                        .font(.caption)
                        .foregroundColor(textColor)
                }
            }
            .padding(.vertical, 6)
            .listRowBackground(
                user.isMessageRead
                ? Color.clear
                : Color.blue.opacity(0.08)
            )
        }
        .listStyle(.plain)
    }
    
    
    func formatDate(_ date: Date) -> String {
        let f = DateFormatter()
        f.dateFormat = "hh:mm a"
        return f.string(from: date)
    }
}
