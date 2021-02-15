import Tracking
import SwiftUI

struct AnalyticsViewModifier: ViewModifier {
    @Environment(\.analytics) private var analytics: Analytics
    
    var screenName: String
    
    func body(content: Content) -> some View {
        return content.onAppear {
            analytics.log(event: "screen-appeared", parameters: [
                "screen-name": .string(screenName)
            ])
        }
    }
}

extension View {
    public func track(screenName: String) -> some View {
        return self.modifier(AnalyticsViewModifier(screenName: screenName))
    }
}
