//
//  File.swift
//  
//
//  Created by AJ Caldwell on 9/25/19.
//

import Foundation



enum OkSeriesType {
    case SundayMorning
    case WednesdayEvening
    case Unknown

    static var formatter = { () -> DateFormatter in
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        return formatter
    }()

    static func from(date: Date) -> OkSeriesType {
        // we are working in CST
        let weekday = formatter.string(from: date)
        switch weekday {
        case "Wednesday":
            return .WednesdayEvening
        case "Sunday":
            return .SundayMorning
        default:
            return .Unknown
        }
    }
}
