//
//  LiveScore.swift
//  
//
//  Created by Umar Haroon on 10/22/22.
//

import Foundation
public enum Leagues: Int, Codable, CaseIterable, Equatable {
    case English_Premier_League = 4328
    case English_League_Championship = 4329
    case German_Bundesliga = 4331
    case Serie_A = 4332
    case Ligue_1 = 4334
    case La_Liga = 4335
    case Eredivisie = 4337
    case MLS = 4346
    case Liga_MX = 4350
    case Serie_B = 4394
    case FIFA_World_Cup = 4429
    case UEFA_Champions_League = 4480
    case UEFA_Europa_League = 4481
    case FA_Cup = 4482
    case Copa_del_Rey = 4483
    case Coupe_De_France = 4484
    case DFB_Pokal = 4485
    case UEFA_Nations_League = 4490
    case Copa_America = 4499
    case UEFA_Conference_League = 5071
    
    case nfl = 4391
    case nba = 4387
    case nhl = 4380
    case mlb = 4424
    
    public var isSoccer: Bool {
        return [Leagues.nfl, Leagues.nba, Leagues.nhl, Leagues.mlb].contains(self)
    }
    public var leagueName: String {
        switch self {
        case .English_Premier_League:
            return "English Premier League"
        case .English_League_Championship:
            return "English Championship"
        case .German_Bundesliga:
            return "Bundesliga"
        case .Serie_A:
            return "Serie A"
        case .Ligue_1:
            return "Ligue 1"
        case .La_Liga:
            return "La Liga"
        case .Eredivisie:
            return "Eredivisie"
        case .MLS:
            return "MLS"
        case .Liga_MX:
            return "Liga MX"
        case .Serie_B:
            return "Serie B"
        case .FIFA_World_Cup:
            return "FIFA World Cup"
        case .UEFA_Champions_League:
            return "UEFA Champions League"
        case .UEFA_Europa_League:
            return "UEFA Europa League"
        case .FA_Cup:
            return "FA Cup"
        case .Copa_del_Rey:
            return "Copa Del Rey"
        case .Coupe_De_France:
            return "Coupe De France"
        case .DFB_Pokal:
            return "DFB Pokal"
        case .UEFA_Nations_League:
            return "UEFA Nations League"
        case .Copa_America:
            return "Copa America"
        case .UEFA_Conference_League:
            return "UEFA Conference League"
        case .nfl:
            return "NFL"
        case .mlb:
            return "MLB"
        case .nhl:
            return "NHL"
        case .nba:
            return "NBA"
        }
    }
}
public struct LiveScore: Codable, Equatable {
    public init(nba: LiveEvent? = nil, mlb: LiveEvent? = nil, soccer: LiveEvent? = nil, nfl: LiveEvent? = nil, nhl: LiveEvent? = nil) {
        self.nba = nba
        self.mlb = mlb
        self.soccer = soccer
        self.nfl = nfl
        self.nhl = nhl
    }
    
    public var nba: LiveEvent?
    public var mlb: LiveEvent?
    public var soccer: LiveEvent?
    public var nfl: LiveEvent?
    public var nhl: LiveEvent?
    
    mutating public func removeNonStarting() {
        nba?.events.removeAll(where: { event in
            event.isDone
        })
        mlb?.events.removeAll(where: { event in
            event.isDone
        })
        soccer?.events.removeAll(where: { event in
            event.isDone
        })
        nfl?.events.removeAll(where: { event in 
            event.isDone
        })
        nhl?.events.removeAll(where: { event in
            event.isDone
        })
    }
    mutating public func removeOtherInfo() {
        soccer?.events.removeAll(where: { event in
            guard let idLeague = event.idLeague,
                  let leagueID = Int(idLeague) else { return true }
            return !Leagues.allCases.map({$0.rawValue}).contains(leagueID)
        })
        
    }
}
