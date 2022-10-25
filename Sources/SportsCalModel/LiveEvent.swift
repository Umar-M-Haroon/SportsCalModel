//
//  LiveBasketball.swift
//  
//
//  Created by Umar Haroon on 10/21/22.
//

import Foundation
// MARK: - LiveEvent
public struct LiveEvent: Codable {
    public var events: [Game]
    enum CodingKeys: String, CodingKey {
        case events
    }
}

// MARK: - Event
public struct Game: Codable, Identifiable {
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

