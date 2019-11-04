import Foundation

// Start with a date, like so:

let date = Date()


// Create a date using today's date and a DateComponents structure

let components = DateComponents(calendar: .current, year: 2019, month: 11, day: 3)
let fromComponents = components.date

// Compare the two dates to see if they occur in the same Calendar day

if Calendar.current.isDate(date, inSameDayAs: fromComponents!) {
    print("Same day!")
}

// use the formatter to print the day in a friendly format.
// hint, use NSDateFormatter.com to get an appropriate printing format string.

let formatter = DateFormatter()
formatter.dateFormat = "EEEE, MMM ddth, YYYY"
print(formatter.string(from: date))
