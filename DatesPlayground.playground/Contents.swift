import Foundation

// Start with a date, like so:

let date = Date()


// Create a date using today's date and a DateComponents structure

let calendar = Calendar.current

let dateComponents = calendar.dateComponents([Calendar.Component.day, Calendar.Component.month, Calendar.Component.year], from: date)

// Compare the two dates to see if they occur in the same Calendar day

let compDate = date as NSDate

if compDate.isEqual(to: dateComponents.date)  {
    print("Same day!")
}

let formatter = DateFormatter()

// use the formatter to print the day in a friendly format.
// hint, use NSDateFormatter.com to get an appropriate printing format string.
formatter.locale = Locale(identifier: "en_US")
print(formatter.string(from: date))
