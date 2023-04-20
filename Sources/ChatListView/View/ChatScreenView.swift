//
//  ChatScreenView.swift
//  chatLibrary
//
//  Created by Swaminarayan on 15/03/23.
//

import SwiftUI

public struct ChatScreenView<room : ChannelProtocol, messages : MessageProtocol>: View {
    @Environment(\.appearance) var appearance
    @State var text = ""
    @State var hideAttachment = false
    @ObservedObject var keyboardManager = KeyboardManager()
    let roomInfo : room
    let msgs: [messages]
    
    public var body: some View {
        VStack(spacing: 0) {
            ScrollViewReader { scrollView in
                ScrollView {
                    LazyVStack(spacing: 10) {
                        Spacer()
                        ForEach(msgs, id: \.id) {msg in
                            MessageView(msg: msg, myMessage: .random())
                        }
                    }
                }
                .clipped()
                .background(appearance.background)
                .onAppear {
                    scrollView.scrollTo(14)
                }
                .onReceive(keyboardManager.$keyboardHeight) { he in
                    if he > 0 {
                        scrollView.scrollTo(14, anchor: .bottom)
                    }
                }
            }
            HStack {
                Button {
                    
                } label: {
                    Image("emoji")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                } .foregroundColor(appearance.tint)
                
                TextField("enter message", text: $text, onEditingChanged: { res in
                    self.hideAttachment = res
                })
                    .padding(.horizontal)
                    .frame(height: 40)
                    .background(Color.white)
                    .clipShape(Capsule())
                if !hideAttachment{
                    Button {
                        
                    } label: {
                        Image(systemName: "paperclip")
                            .resizable()
                            .frame(width: 20, height: 25)
                    } .foregroundColor(appearance.tint)
                }
                Button {
                    
                } label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .frame(width: 15, height: 20)
                } .foregroundColor(appearance.tint)
            }
           
            .buttonStyle(.plain)
            .padding(.horizontal)
            .padding(.vertical, 10)
            .background(appearance.secondaryBackground)
        }
//        .background(appearance.background)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                HStack {
                    Image("emoji")
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .center)
                    Text(roomInfo.name)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                HStack{
                    Button {
                        
                    } label: {
                        Image(systemName: "phone.fill")
                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "video.fill")
                    }
                }
                .foregroundColor(appearance.tint)
            }
        }
    }
}

