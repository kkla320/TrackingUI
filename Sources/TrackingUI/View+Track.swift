//
//  File.swift
//  
//
//  Created by Kevin Klaebe on 15.02.21.
//

import Foundation
import SwiftUI

extension View {
    /// Call this modifier to track the appearence and disappearance of the view
    public func track<T>(screenName: String, sender: T) -> some View where T: View {
        return self.modifier(AnalyticsViewModifier(screenName: screenName, sender: sender))
    }
}
