//
//  chatCellView.swift
//  chatLibrary
//
//  Created by Swaminarayan on 13/03/23.
//

import SwiftUI


public struct ChatCellView<room : ChannelProtocol>: View {
    @Environment(\.appearance) var appearance
    let roominfo : room
 public var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .cornerRadius(5)
            VStack(alignment: .leading) {
                Text(roominfo.name)
                    .bold()
                switch roominfo.lastMessage?.style{
                case .text(let text):
                    Text(text)
                        .lineLimit(1)
                case .media(_):
                    EmptyView()
                case .none:
                    EmptyView()
                }
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text(" 12 ")
                    .foregroundColor(appearance.primary)
                    .background(appearance.tint)
                    .clipShape(Circle())
                Text("43 minutes ago")
                    .font(/*@START_MENU_TOKEN@*/.caption/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

