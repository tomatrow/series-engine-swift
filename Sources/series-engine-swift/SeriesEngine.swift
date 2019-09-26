//
//  File.swift
//  
//
//  Created by AJ Caldwell on 9/25/19.
//

import Foundation



enum SeriesEngineContentType: String {
    case Speaker,
        SeriesType,
        Series,
        Topic,
        Message
    var toDataType: String {
        return rawValue.lowercased()
    }
}

protocol HasContentType {
    var type: SeriesEngineContentType { get }
}

protocol HasId {
    var id: Int { get }
}

protocol HasTitle {
    var title: String { get }
}

protocol HasStartDate {
    var date: Date { get }
}

protocol Speaker: HasContentType, HasId {
    var firstName: String { get }
    var lastName: String { get }
}

extension Speaker {
    var type: SeriesEngineContentType { .Speaker }
}

protocol SeriesType: HasContentType, HasId, HasTitle {}

extension SeriesType {
    var type: SeriesEngineContentType { .SeriesType }
}

protocol Series: HasContentType, HasId, HasTitle, HasStartDate {}

extension Series {
    var type: SeriesEngineContentType { .Series }
}

protocol Topic: HasContentType, HasId {}
extension Topic {
    var type: SeriesEngineContentType { .Topic }
}

protocol Message: HasContentType, HasTitle, HasStartDate {}
extension Message {
    var type: SeriesEngineContentType { .Message }
}
