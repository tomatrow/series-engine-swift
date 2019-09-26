//
//  File.swift
//
//
//  Created by AJ Caldwell on 9/25/19.
//

import Foundation

struct OkMessage {
    var id: Int
    var seriesName: String
    var code: String
    var title: String
    var hasPowerPoint: Bool
    var filename: String
    var summary: String
    var isGuestSpeaker: Bool
    var date: Date

    init(csvRow row: [String]) {
        guard row.count == 9 else { fatalError() }
        id = Int(row[0])!
        seriesName = row[1]
        code = row[2]
        title = row[3]
        filename = row[4]
        date = OkMessage.formatter.date(from: row[5])!
        hasPowerPoint = row[6] == "1"
        summary = row[7]
        isGuestSpeaker = row[8] == "1"
    }

    static var formatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yy HH:mm:ss"
        formatter.timeZone = TimeZone(abbreviation: "CST")!
        return formatter
    }
}
