//
//  ChatListView.swift
//  chatLibrary
//
//  Created by Swaminarayan on 13/03/23.
//

import SwiftUI

public struct ChatListView<Room: ChannelProtocol, Messages : MessageProtocol>: View {
    let Rooms: [Room]
    @Environment(\.appearance) var appearance
    @State var Messages : [Messages]
    public init(Rooms: [Room], msgs: [Messages]) {
        self.Rooms = Rooms
        self.Messages = msgs
        UITableView.appearance().backgroundColor = .green
    }
   public var body: some View {
        List {
            ForEach(Rooms, id: \.id){room in
                ChatCellView(roominfo: room)
                    .overlay(
                        NavigationLink("", destination: {
                            ChatScreenView(roomInfo:room, msgs: self.Messages)
                        }).opacity(0))
            }
        }
        .listStyle(.inset)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Text("Messages")
                    .font(.largeTitle)
                    .foregroundColor(appearance.tint)
            }
        }
        .navigationTitle("")
        .edgesIgnoringSafeArea(.bottom)
    }
    
    
}

