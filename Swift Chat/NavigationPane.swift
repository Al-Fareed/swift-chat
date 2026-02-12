
import SwiftUI

struct NavigationPane : View {
    var body : some View {
        TabView{
            ChatsView()
                .tabItem{
                    Image(systemName: "message")
                    Text("Chats")
                }
            GroupsView()
                .tabItem{
                    Image(systemName: "person.3.fill")
                    Text("Groups")
                }
        }
    }
}
