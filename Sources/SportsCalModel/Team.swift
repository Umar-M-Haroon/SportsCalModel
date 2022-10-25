// MARK: - Team
public struct Teams: Codable {
    public var teams: [Team]
}
public struct Team: Codable {
    public let idTeam: String?
    public let strTeam: String?
    public let strTeamShort: String?
    public let strAlternate: String?
    public let strTeamBadge: String?
    
    enum CodingKeys: String, CodingKey {
        case idTeam = "idTeam"
        case strTeam = "strTeam"
        case strTeamShort = "strTeamShort"
        case strAlternate = "strAlternate"
        case strTeamBadge = "strTeamBadge"
    }
}
