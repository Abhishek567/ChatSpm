//
//  UserProtocol.swift
//  chatLibrary
//
//  Created by Swaminarayan on 24/03/23.
//

import Foundation

/// A protocol that defines the necessary information for displaying a user regarding UI.
public protocol UserProtocol: Identifiable, Hashable {
    var id: String { get }
    var username: String { get }
    var imageURL: URL? { get }
}
