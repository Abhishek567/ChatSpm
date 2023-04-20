//
//  ChannelProtocol.swift
//  chatLibrary
//
//  Created by Swaminarayan on 24/03/23.
//
import Foundation

/// A protocol that defines the necessary information for displaying a channel regarding UI.
public protocol ChannelProtocol {
    /// The associated type that conforms to ``UserProtocol``
    associatedtype UserType: UserProtocol
    /// The associated type that conforms to ``MessageProtocol``
    associatedtype MessageType: MessageProtocol
    
    var id: String { get }
    var name: String { get }
    var imageURL: URL? { get }
    var members: [UserType] { get }
    var lastMessage: MessageType? { get }
}
