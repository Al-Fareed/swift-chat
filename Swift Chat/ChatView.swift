
import SwiftUI

struct ChatView: View {
    
    let messages = Chats.chats
    let currentUser: String = "alfa"
    @Environment(\.dismiss) var dismiss

    @State private var message = ""
    @StateObject var utils = Utils()
    var body: some View {
        
        VStack(spacing: 0) {
            
            // MARK: - Header
            
            HStack(spacing:12) {
                Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                
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
                    utils.alertUser(message: "Not implemented bro")
                }label: {
                    Image(systemName: "paperplane.fill")
                }
            }.padding()
        }.toolbar(.hidden, for: .navigationBar)
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
