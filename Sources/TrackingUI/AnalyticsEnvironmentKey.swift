//
//  File.swift
//  
//
//  Created by Kevin Klaebe on 15.02.21.
//

import Tracking
import SwiftUI

public struct AnalyticsEnvironmentKey: EnvironmentKey {
    public static var defaultValue: Analytics = Analytics.shared
}
