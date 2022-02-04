import Tracking

/// An event that should be logged, when a certain screen appeared
public struct ScreenAppearedEvent: Event {
    public let name: String = "screen-appeared"
    public let metadata: Analytics.Metadata?
    
    init<T>(screenName: String, sender: T) {
        self.metadata = [
            .screenNameMetadataKey: .string(screenName),
            .screenSenderMetadataKey: .string(String(describing: sender.self))
        ]
    }
}

extension Event where Self == ScreenAppearedEvent {
    /// Creates a new ScreenAppearedEvent
    /// - Parameters:
    ///    - screenName: The name of the screen that appeared
    ///    - sender: The sender that displays the described screen
    public static func screenAppeared<T>(screenName: String, sender: T) -> ScreenAppearedEvent {
        return ScreenAppearedEvent(screenName: screenName, sender: sender)
    }
}
