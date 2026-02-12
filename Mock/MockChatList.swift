//
//  MockChats.swift
//  Swift Chat
//
//  Created by Al-Fareed on 09/02/26.
//

import Foundation

// MARK: - Models

struct ChatUser: Identifiable {
    let id: UUID = UUID()
    let avatar: String
    let name: String
    let lastMessage: String
    let lastMsgDateTime: Date
    let isMessageRead:Bool
}

struct ChatGroup: Identifiable {
    let id: UUID = UUID()
    let avatar: String
    let name: String
    let lastMessage: String
    let lastMsgDateTime: Date
    let isMessageRead:Bool
}


struct CurrentUser : Identifiable {
    let id: UUID = UUID()
    let name:String
    let avatar: String
    let mobileNumber:String
    let email:String
}

// MARK: - Mock Data

class Data {
    
    static let currentUser: CurrentUser =
    CurrentUser(
        name: "AlFareed",
        avatar: "person",
        mobileNumber: "6348852883",
        email: "alfa428@gmail.com")
    
    // Users
    static let users: [ChatUser] = [
        
        ChatUser(
            avatar: "person.circle.fill",
            name: "Test User",
            lastMessage: "Hello 👋",
            lastMsgDateTime: Date(),
            isMessageRead: true
        ),
        
        ChatUser(
            avatar: "person.circle.fill",
            name: "John Doe",
            lastMessage: "Are we meeting today?",
            lastMsgDateTime: Date().addingTimeInterval(-3600),
            isMessageRead: false
        ),
        
        ChatUser(
            avatar: "person.circle.fill",
            name: "Alice",
            lastMessage: "Sent you the files 📁",
            lastMsgDateTime: Date().addingTimeInterval(-7200),
            isMessageRead: true
        ),
        
        ChatUser(
            avatar: "person.circle.fill",
            name: "Bob",
            lastMessage: "Let’s catch up soon!",
            lastMsgDateTime: Date().addingTimeInterval(-86400),
            isMessageRead: false
        )
    ]
    
    
    // Groups
    static let groups: [ChatGroup] = [
        
        ChatGroup(
            avatar: "person.3.fill",
            name: "Test Group",
            lastMessage: "Welcome everyone 🎉",
            lastMsgDateTime: Date(),
            isMessageRead: false
        ),
        
        ChatGroup(
            avatar: "person.3.fill",
            name: "Family",
            lastMessage: "Dinner at 8 🍽️",
            lastMsgDateTime: Date().addingTimeInterval(-5400),
            isMessageRead: true
        ),
        
        ChatGroup(
            avatar: "person.3.fill",
            name: "Office Team",
            lastMessage: "Meeting rescheduled",
            lastMsgDateTime: Date().addingTimeInterval(-10000),
            isMessageRead: false
        ),
        
        ChatGroup(
            avatar: "person.3.fill",
            name: "Friends",
            lastMessage: "Trip photos uploaded 📸",
            lastMsgDateTime: Date().addingTimeInterval(-20000),
            isMessageRead: true
        )
    ]
}
