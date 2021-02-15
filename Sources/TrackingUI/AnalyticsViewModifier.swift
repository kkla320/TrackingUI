import Tracking
import SwiftUI

struct AnalyticsViewModifier<T>: ViewModifier where T: View {
    @Environment(\.analytics) private var analytics: Analytics
    
    var screenName: String
    var sender: T
    
    func body(content: Content) -> some View {
        return content.onAppear {
            analytics.log(event: Events.screenEvent(screenName: screenName, sender: sender))
        }
    }
}
