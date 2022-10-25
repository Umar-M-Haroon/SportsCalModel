//
//  LiveBasketball.swift
//  
//
//  Created by Umar Haroon on 10/21/22.
//

import Foundation
// MARK: - LiveEvent
public struct LiveEvent: Codable {
    var events: [Game]
    enum CodingKeys: String, CodingKey {
        case events
    }
}

// MARK: - Event
public struct Game: Codable, Identifiable {
    var id: String {
        idEvent ?? UUID().uuidString
    }
    let idLiveScore, idEvent, strSport, idLeague: String?
    let strLeague, idHomeTeam, idAwayTeam: String?
    let strHomeTeam: String
    let strAwayTeam: String
    let strHomeTeamBadge, strAwayTeamBadge: String?
    let intHomeScore, intAwayScore: String?
    let strPlayer, idPlayer, intEventScore, intEventScoreTotal: String??
    let strStatus, strProgress, strEventTime, dateEvent: String?
    let updated: String?
    let strTimestamp: String?
}

