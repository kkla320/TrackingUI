//
//  File.swift
//  
//
//  Created by Kevin Klaebe on 15.02.21.
//

import Foundation
import SwiftUI

extension View {
    public func track<T>(screenName: String, sender: T) -> some View where T: View {
        return self.modifier(AnalyticsViewModifier(screenName: screenName, sender: sender))
    }
}
