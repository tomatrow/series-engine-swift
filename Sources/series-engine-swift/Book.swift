//
//  File.swift
//
//
//  Created by AJ Caldwell on 9/25/19.
//

import Foundation

enum Book: Int, CaseIterable {
    case genesis
    case oneChronicles
    case oneCorinthians
    case oneJohn
    case oneKings
    case onePeter
    case oneSamuel
    case oneThessalonians
    case oneTimothy
    case twoChronicles
    case twoCorinthians
    case twoJohn
    case twoKings
    case twoPeter
    case twoSamuel
    case twoThessalonians
    case twoTimothy
    case threeJohn
    case acts
    case amos
    case colossians
    case daniel
    case deuteronomy
    case ecclesiastes
    case ephesians
    case esther
    case exodus
    case ezekiel
    case ezra
    case galatians
    case habukkuk
    case haggai
    case hebrews
    case hosea
    case isaiah
    case james
    case jeremiah
    case job
    case joel
    case john
    case jonah
    case joshua
    case jude
    case judges
    case lamentations
    case leviticus
    case luke
    case malachi
    case mark
    case matthew
    case micah
    case nahum
    case nehemiah
    case numbers
    case obadiah
    case philemon
    case philippians
    case proverbs
    case psalms
    case revelation
    case romans
    case ruth
    case solomon
    case titus
    case zechariah
    case zephaniah
}

extension Book: Series {
    var id: Int {
        return rawValue
    }

    var title: String {
        return rawValue.description
    }

    var date: Date {
        return Date()
    }
}

extension Book {
    var literal: String {
        switch self {
        case .genesis:
            return "GENESIS"
        case .oneChronicles:
            return "1CHRONICLES"
        case .oneCorinthians:
            return "1CORINTHIANS"
        case .oneJohn:
            return "1JOHN"
        case .oneKings:
            return "1KINGS"
        case .onePeter:
            return "1PETER"
        case .oneSamuel:
            return "1SAMUEL"
        case .oneThessalonians:
            return "1THESSALONIANS"
        case .oneTimothy:
            return "1TIMOTHY"
        case .twoChronicles:
            return "2CHRONICLES"
        case .twoCorinthians:
            return "2CORINTHIANS"
        case .twoJohn:
            return "2JOHN"
        case .twoKings:
            return "2KINGS"
        case .twoPeter:
            return "2PETER"
        case .twoSamuel:
            return "2SAMUEL"
        case .twoThessalonians:
            return "2THESSALONIANS"
        case .twoTimothy:
            return "2TIMOTHY"
        case .threeJohn:
            return "3JOHN"
        case .acts:
            return "ACTS"
        case .amos:
            return "AMOS"
        case .colossians:
            return "COLOSSIANS"
        case .daniel:
            return "DANIEL"
        case .deuteronomy:
            return "DEUTERONOMY"
        case .ecclesiastes:
            return "ECCLESIASTES"
        case .ephesians:
            return "EPHESIANS"
        case .esther:
            return "ESTHER"
        case .exodus:
            return "EXODUS"
        case .ezekiel:
            return "EZEKIEL"
        case .ezra:
            return "EZRA"
        case .galatians:
            return "GALATIANS"
        case .habukkuk:
            return "HABUKKUK"
        case .haggai:
            return "HAGGAI"
        case .hebrews:
            return "HEBREWS"
        case .hosea:
            return "HOSEA"
        case .isaiah:
            return "ISAIAH"
        case .james:
            return "JAMES"
        case .jeremiah:
            return "JEREMIAH"
        case .job:
            return "JOB"
        case .joel:
            return "JOEL"
        case .john:
            return "JOHN"
        case .jonah:
            return "JONAH"
        case .joshua:
            return "JOSHUA"
        case .jude:
            return "JUDE"
        case .judges:
            return "JUDGES"
        case .lamentations:
            return "LAMENTATIONS"
        case .leviticus:
            return "LEVITICUS"
        case .luke:
            return "LUKE"
        case .malachi:
            return "MALACHI"
        case .mark:
            return "MARK"
        case .matthew:
            return "MATTHEW"
        case .micah:
            return "MICAH"
        case .nahum:
            return "NAHUM"
        case .nehemiah:
            return "NEHEMIAH"
        case .numbers:
            return "NUMBERS"
        case .obadiah:
            return "OBADIAH"
        case .philemon:
            return "PHILEMON"
        case .philippians:
            return "PHILIPPIANS"
        case .proverbs:
            return "PROVERBS"
        case .psalms:
            return "PSALMS"
        case .revelation:
            return "REVELATION"
        case .romans:
            return "ROMANS"
        case .ruth:
            return "RUTH"
        case .solomon:
            return "SOLOMON"
        case .titus:
            return "TITUS"
        case .zechariah:
            return "ZECHARIAH"
        case .zephaniah:
            return "ZEPHANIAH"
        }
    }

    func from(literal: String) -> Book? {
//        for book in
        return nil
    }
}
