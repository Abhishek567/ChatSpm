//
//  MediaType.swift
//  chatLibrary
//
//  Created by Swaminarayan on 24/03/23.
//

import Foundation
import Contacts

/// The types of the media.
public enum MediaType: Hashable {
    /// Emoji.
    case emoji(_ id: String)
    /// Taken photo with the *Camera* or chosen photo from the *Gallery*.
    case photo(_ data: Data)
    /// Taken video with the *Camera* or chosen video from the *Phone*.
    case video(_ date: Data)
    /// Document file from the *Phone*
    case document(_ data: Data)
}
