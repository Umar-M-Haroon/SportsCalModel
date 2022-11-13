//
//  LiveBasketball.swift
//  
//
//  Created by Umar Haroon on 10/21/22.
//

import Foundation
// MARK: - LiveEvent
public struct LiveEvent: Codable, Equatable {
    public var events: [Game]
    enum CodingKeys: String, CodingKey {
        case events
    }
}

// MARK: - Event
public struct Game: Codable, Identifiable, Equatable {
    public init(idLiveScore: String? = nil, idEvent: String? = nil, strSport: String? = nil, idLeague: String? = nil, strLeague: String? = nil, idHomeTeam: String? = nil, idAwayTeam: String? = nil, strHomeTeam: String, strAwayTeam: String, strHomeTeamBadge: String? = nil, strAwayTeamBadge: String? = nil, intHomeScore: String? = nil, intAwayScore: String? = nil, strPlayer: String?? = nil, idPlayer: String?? = nil, intEventScore: String?? = nil, intEventScoreTotal: String?? = nil, strStatus: String? = nil, strProgress: String? = nil, strEventTime: String? = nil, dateEvent: String? = nil, updated: String? = nil, strTimestamp: String? = nil) {
        self.idLiveScore = idLiveScore
        self.idEvent = idEvent
        self.strSport = strSport
        self.idLeague = idLeague
        self.strLeague = strLeague
        self.idHomeTeam = idHomeTeam
        self.idAwayTeam = idAwayTeam
        self.strHomeTeam = strHomeTeam
        self.strAwayTeam = strAwayTeam
        self.strHomeTeamBadge = strHomeTeamBadge
        self.strAwayTeamBadge = strAwayTeamBadge
        self.intHomeScore = intHomeScore
        self.intAwayScore = intAwayScore
        self.strPlayer = strPlayer
        self.idPlayer = idPlayer
        self.intEventScore = intEventScore
        self.intEventScoreTotal = intEventScoreTotal
        self.strStatus = strStatus
        self.strProgress = strProgress
        self.strEventTime = strEventTime
        self.dateEvent = dateEvent
        self.updated = updated
        self.strTimestamp = strTimestamp
    }
    
    public var id: String {
        idEvent ?? UUID().uuidString
    }
    public let idLiveScore, idEvent, strSport, idLeague: String?
    public let strLeague, idHomeTeam, idAwayTeam: String?
    public let strHomeTeam: String
    public let strAwayTeam: String
    public let strHomeTeamBadge, strAwayTeamBadge: String?
    public let intHomeScore, intAwayScore: String?
    public let strPlayer, idPlayer, intEventScore, intEventScoreTotal: String??
    public let strStatus, strProgress, strEventTime, dateEvent: String?
    public let updated: String?
    public let strTimestamp: String?
}

extension Game {
    var isDone: Bool {
        let invalidStrings = ["NS", "FT", "AOT", "pre", "Final", "Final/OT", ]
        return invalidStrings.contains(where: {$0 == strStatus}) || invalidStrings.contains(where: {$0 == strProgress})
    }
}
