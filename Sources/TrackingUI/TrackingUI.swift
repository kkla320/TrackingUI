import Tracking
import SwiftUI

struct AnalyticsViewModifier<T>: ViewModifier where T: View {
    @Environment(\.analytics) private var analytics: Analytics
    
    var screenName: String
    var sender: T
    
    func body(content: Content) -> some View {
        return content.onAppear {
            analytics.log(event: Events.screenEvent(screenName: screenName, sender: content))
        }
    }
}

extension View {
    public func track<T>(screenName: String, sender: T) -> some View where T: View {
        return self.modifier(AnalyticsViewModifier(screenName: screenName, sender: sender))
    }
}
