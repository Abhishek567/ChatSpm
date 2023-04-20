//
//  MessageProtocol.swift
//  chatLibrary
//
//  Created by Swaminarayan on 24/03/23.
//

import Foundation

/// A protocol that defines the necessary information for displaying a message regarding UI.
public protocol MessageProtocol: Hashable {
    /// The associated type that conforms to ``UserProtocol``
    associatedtype UserType: UserProtocol
    
    var id: String { get }
    var sender: UserType { get }
    var sentAt: Double { get }
    var style: MessageStyle { get }
}

