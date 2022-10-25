//
//  SportType.swift
//  SportsCal
//
//  Created by Umar Haroon on 10/23/22.
//

import Foundation
public enum SportType: String, CaseIterable {
    case basketball
    case soccer
    case hockey
    case mlb
    case nfl
    
    public init(league: Leagues) {
        switch league {
        case .nfl:
            self = .nfl
        case .nba:
            self = .basketball
        case .nhl:
            self = .hockey
        case .mlb:
            self = .mlb
        default:
            self = .soccer
        }
    }
    public var capitalized: String {
        switch self {
        case .basketball:
            return "NBA"
        case .soccer:
            return "Soccer"
        case .hockey:
            return "NHL"
        case .mlb:
            return "MLB"
        case .nfl:
            return "NFL"
        }
    }
}
