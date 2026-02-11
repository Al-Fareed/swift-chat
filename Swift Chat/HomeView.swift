import SwiftUI
struct HomeView: View{

    var body: some View {
            
            NavigationStack {
                
                VStack(spacing: 0) {
                    
                    HStack {
                        
                        Text("SWIFT CHAT")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Image(systemName: "message.badge.fill.rtl")
                            .font(.title)
                        
                        Spacer()
                        
                        NavigationLink {
                            Profile()
                        } label: {
                            Image(systemName: "person.circle.fill")
                                .font(.largeTitle)
                                .foregroundStyle(Color.black)
                        }
                    }
                    .padding()
                    
                    
                    Divider()
                    
                    
                    ZStack {
                        
                        NavigationPane()
                        
                        VStack {
                            Spacer()
                            
                            HStack {
                                Spacer()
                                
                                ZStack {
                                    Circle()
                                        .fill(Color.black)
                                        .frame(width: 56, height: 56)
                                        .shadow(radius: 4)
                                    
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                        .font(.title2)
                                }
                                .padding()
                            }
                        }
                    }
                }
            }
        }
}
