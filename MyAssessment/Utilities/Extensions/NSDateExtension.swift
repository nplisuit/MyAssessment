//
//  NSDateExtension.swift
//  MyAssessment
//
//  Created by Nguyen Phuc Loc on 4/20/15.
//
//

import Foundation

extension NSDate {
    
    class func formatDate(dateInput:NSDate) -> String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd MMMM yyyy"
        dateFormatter.timeZone = NSTimeZone()
        let dateString = dateFormatter.stringFromDate(dateInput)
        return "\(dateString)"
    }
    
    // add a day from date
    class func addOneDayForDate(dateInput:NSDate) -> NSDate {
        let dayComponent = NSDateComponents()
        dayComponent.day = 1;
        
        let theCalendar = NSCalendar.currentCalendar()
        let nextDate = theCalendar.dateByAddingComponents(dayComponent, toDate: dateInput, options: NSCalendarOptions.allZeros)
        return nextDate!
    }
}