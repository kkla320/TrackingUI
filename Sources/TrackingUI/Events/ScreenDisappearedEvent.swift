import Tracking

/// An event that should be logged, when a certain screen disappeared
public struct ScreenDisappearedEvent: Event {
    public let name: String = "screen-disappeared"
    public let metadata: Analytics.Metadata?
    
    public init<T>(screenName: String, sender: T) {
        self.metadata = [
            .screenNameMetadataKey: .string(screenName),
            .screenSenderMetadataKey: .string(String(describing: sender.self))
        ]
    }
}

extension Tracking.Event where Self == ScreenDisappearedEvent {
    /// Creates a new ScreenDisappearedEvent
    /// - Parameters:
    ///    - screenName: The name of the screen that disappeared
    ///    - sender: The sender that displays the described screen
    public static func screenDisappeared<T>(screenName: String, sender: T) -> ScreenDisappearedEvent {
        return ScreenDisappearedEvent(screenName: screenName, sender: sender)
    }
}
