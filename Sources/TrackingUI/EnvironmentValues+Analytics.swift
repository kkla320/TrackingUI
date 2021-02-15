//
//  File.swift
//  
//
//  Created by Kevin Klaebe on 15.02.21.
//

import Tracking
import SwiftUI

extension EnvironmentValues {
    public var analytics: Analytics {
        get {
            self[AnalyticsEnvironmentKey.self]
        }
        set {
            self[AnalyticsEnvironmentKey.self] = newValue
        }
    }
}
