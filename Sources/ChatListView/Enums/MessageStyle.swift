//
//  MessageStyle.swift
//  chatLibrary
//
//  Created by Swaminarayan on 24/03/23.
//
import Foundation
import SwiftUI

/// The Styles of the message.
///
/// The user can send a several styles of the messages such as text only, photos, videos, files. This enumeration defines cases of the messages' styles
public enum MessageStyle: Hashable {
    /// General text message
    case text(_ text: String)
    /// The media message such as photo, video, document, contact and so on.
    case media(_ mediaType: MediaType)
}
