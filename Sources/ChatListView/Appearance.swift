//
//  Appearance.swift
//  chatLibrary
//
//  Created by Swaminarayan on 22/03/23.
//

import SwiftUI

extension EnvironmentValues {
    public var appearance: Appearance {
        get { self[AppearanceKey.self] }
        set { self[AppearanceKey.self]  = newValue }
    }
}

private struct AppearanceKey: EnvironmentKey {
    static var defaultValue: Appearance = Appearance()
}

public struct Appearance {
    // MARK: Predefined Colors
    /// The main colors used in views provided by ``chatLibrary``. The default is `Color(.systemBlue)`
    public let tint: Color
    /// The primary label color.
    public let primary: Color
    /// The secondary label color.
    public let secondary: Color
    /// The background color.
    public let background: Color
    /// The background color for message bar.
    public let secondaryBackground: Color
    /// The background color for local user's message body.
    public let localMessageBackground: Color
    /// The background color for remote user's message body.
    public let remoteMessageBackground: Color

        
    public init(
        tint: Color = Color(.systemBlue),
        primary: Color = Color.primary,
        secondary: Color = Color.secondary,
        background: Color = Color(.systemBackground),
        secondaryBackground: Color = Color.gray.opacity(0.3),
        localMessageBackground: Color = Color(.systemBlue),
        remoteMessageBackground: Color = Color(.secondarySystemBackground)
    ) {
        self.tint = tint
        self.primary = primary
        self.secondary = secondary
        self.background = background
        self.secondaryBackground = secondaryBackground
        self.localMessageBackground = localMessageBackground
        self.remoteMessageBackground = remoteMessageBackground
    }
}
