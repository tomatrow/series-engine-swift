//
//  File.swift
//
//
//  Created by AJ Caldwell on 9/25/19.
//

import Foundation

enum OkSeries: Hashable {
    
    case holySpirit
    case leadership
    case miscellaneous
    case seasonal
    case route66
    case topical
    case calvinismArminianism
    case endTimes
    case cultsIsms
    case bible(Book)

    var literal: String {
        switch self {
        case .holySpirit:
            return "HOLY SPIRIT"
        case .leadership:
            return "LEADERSHIP"
        case .miscellaneous:
            return "MISCELLANEOUS"
        case .seasonal:
            return "SEASONAL TOPICS"
        case .route66:
            return "ROUTE 66 SERIES"
        case .topical:
            return "TOPICAL TEACHINGS"
        case .calvinismArminianism:
            return "CALVINISM - ARMINIANISM SERIES"
        case .endTimes:
            return "END TIMES SERIES"
        case .cultsIsms:
            return "CULTS-ISMS"
        case .bible(let book):
            return book.title
        }
    }
}

extension OkSeries {
    static func from(literal: String) -> OkSeries? {
//        if let book = Book.from(literal: literal) {
//            return .bible(book)
//        }
//
//        for series in OkSeries.AllCases {
//            if series.literal
//        }

        nil
    }
}
