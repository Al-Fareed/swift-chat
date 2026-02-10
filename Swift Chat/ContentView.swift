//
//  ContentView.swift
//  Swift Chat
//
//  Created by Al-Fareed on 09/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack{
                HStack{
                    Text("SWIFT CHAT").font(.title).fontWeight(.bold)
                    Image(systemName: "message.badge.fill.rtl").font(.title)
                    Spacer()
                    
                    
                    NavigationLink {
                        Profile()
                    } label: {
                        Image(systemName: "person.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(Color.black)
                    }
                    
                    
                    
                }
                
                Divider().background(Color.gray).frame(height: 2)
                
                NavigationPane()
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
