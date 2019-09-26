import CSV
import Files
import Foundation

func main() throws {
    let inputPath = "~/src/series-engine-swift/input"

    func csvFor(_ path: String) throws -> CSVReader {
        let file = try File(path: path)
        let content = try file.readAsString()
        return try CSVReader(string: content, hasHeaderRow: true, delimiter: ",")
    }

    let books: [[String]] = try csvFor(inputPath.appending("/books.csv")).map { $0 }
    let teachings: [[String]] = try csvFor(inputPath.appending("/teachings.csv")).map { $0 }

    // some derived data
    let bookNames = Set(books.map { $0[1] }.dropFirst().map { $0.split(separator: " ") }.map { $0[1] }.map(String.init))
    let okMessages: [OkMessage] = teachings.map(OkMessage.init(csvRow:))

    let uncanceledMessages = okMessages.filter { $0.seriesName != "" }

    let guestSpekers: Set<String> = Set(uncanceledMessages.filter { $0.isGuestSpeaker }.map { $0.seriesName })
    let seriesNamesSet = Set(uncanceledMessages.map { $0.seriesName })

    let otherSeriesSet = seriesNamesSet.subtracting(guestSpekers).subtracting(bookNames)
    
    let bySeries: [OkSeries: [OkMessage]] = Dictionary(grouping: uncanceledMessages) { message -> OkSeries in
        return OkSeries.bible(.acts)
    }

//    let bySeriesType: [OkSeriesType: [OkMessage]] = Dictionary(grouping: uncanceledMessages) { message -> OkSeriesType in
//        OkSeriesType.from(date: message.date)
//    }

    print("YEH")

    /*

     */
}

do {
    print("Hello, world!")
    try main()
    print("done")
} catch let err {
    print("Error: \(err)")
}

