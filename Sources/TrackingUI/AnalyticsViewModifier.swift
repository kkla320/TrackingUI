import Tracking
import SwiftUI

struct AnalyticsViewModifier<T>: ViewModifier where T: View {
    @Environment(\.analytics) private var analytics: Analytics
    
    var screenName: String
    var sender: T
    
    func body(content: Content) -> some View {
        return content
            .onAppear {
                analytics.log(event: .screenAppeared(screenName: screenName, sender: type(of: sender)))
            }
            .onDisappear {
                analytics.log(event: .screenAppeared(screenName: screenName, sender: type(of: sender)))
            }
    }
}
