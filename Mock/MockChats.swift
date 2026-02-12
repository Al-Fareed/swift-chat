//
//  MockChats.swift
//  Swift Chat
//
//  Created by Al-Fareed on 10/02/26.
//
import Foundation
import SwiftUI
struct ChatMessage: Identifiable{
    let id: UUID = UUID()
    let sender: String
    let message:String
    let dateTime: Date
}

class Chats{
    static let chats: [ChatMessage] = [
        ChatMessage(
                sender: "alwyn",
                message: "Hey 👋",
                dateTime: Date().addingTimeInterval(-3600)
            ),
            
            ChatMessage(
                sender: "alfa",
                message: "Hello!",
                dateTime: Date().addingTimeInterval(-3500)
            ),
            
            ChatMessage(
                sender: "alwyn",
                message: "Are we meeting today?",
                dateTime: Date().addingTimeInterval(-3000)
            ),
            
            ChatMessage(
                sender: "alfa",
                message: "Yes 👍 at 5 PM",
                dateTime: Date().addingTimeInterval(-2500)
            )
    ]
}
