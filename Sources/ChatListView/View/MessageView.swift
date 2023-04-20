//
//  MessageView.swift
//  chatLibrary
//
//  Created by Swaminarayan on 16/03/23.
//

import SwiftUI

struct MessageView<Msg: MessageProtocol>: View {
    @Environment(\.appearance) var appearance
    let msg : Msg
    let myMessage : Bool
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                if myMessage{
                    Spacer(minLength: 20)
                }
                VStack(alignment: myMessage ? .trailing : .leading,spacing: 0) {
                    if !myMessage{
                        Text("sender")
                            .foregroundColor(appearance.tint)
                    }
                    switch msg.style{
                    case let .text(mssg):
                        Text(mssg)
                            .frame(minWidth: 18)
                            .foregroundColor(myMessage ? appearance.primary : appearance.secondary)
                    case .media(_):
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 220, height: 120)
                    }
                    
                    if myMessage{
                        Image(systemName: "arrowshape.turn.up.forward")
                            .foregroundColor(appearance.primary)
                    }
                }
                .padding(.horizontal,12)
                .padding(.vertical,5)
                .zIndex(1)
                .background( myMessage ? appearance.localMessageBackground : appearance.remoteMessageBackground)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                if !myMessage{
                    Spacer(minLength: 20)
                }
            }
        } .padding(.horizontal)
            .id(msg.id)
    }
}
