//
//  GroupsView.swift
//  Swift Chat
//
//  Created by Al-Fareed on 09/02/26.
//
import SwiftUI
import Foundation

struct GroupsView: View {
    
    // Mock groups
    let groups = Data.groups
    
    var body: some View {
        
        NavigationStack {
            
            List(groups) { group in
                
                // Text color logic (same as ChatsView)
                let textColor = group.isMessageRead
                ? Color.primary
                : Color.blue
                
                HStack(spacing: 12) {
                    
                    ZStack {
                        Circle()
                            .fill(
                                group.isMessageRead
                                ? Color.gray.opacity(0.2)
                                : Color.blue.opacity(0.2)
                            )
                            .frame(width: 50, height: 50)
                        
                        Image(systemName: group.avatar)
                            .font(.system(size: 20))
                    }

                    
                    
                    // Name + Message
                    VStack(alignment: .leading, spacing: 6) {
                        
                        Text(group.name)
                            .font(
                                group.isMessageRead
                                ? .headline
                                : .headline.bold()
                            )
                        
                        Text(group.lastMessage)
                            .font(.subheadline)
                            .lineLimit(1)
                    }
                    .foregroundColor(textColor)
                    
                    
                    Spacer()
                    
                    
                    // Time
                    VStack {
                        
                        Text(formatDate(group.lastMsgDateTime))
                            .font(.caption)
                            .foregroundColor(textColor)
                        
                        Spacer()
                    }
                }
                .padding(.vertical, 6)
                
                // Row background highlight
                .listRowBackground(
                    group.isMessageRead
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
