import Foundation

@objc(Event)
class Event: _Event {

	// Custom logic goes here.
    var formattedTimeStamp : String {
        return NSDateFormatter.localizedStringFromDate(timeStamp!, dateStyle: NSDateFormatterStyle.MediumStyle, timeStyle: NSDateFormatterStyle.MediumStyle)
    }
}
