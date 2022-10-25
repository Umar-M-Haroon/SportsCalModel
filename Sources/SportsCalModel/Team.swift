// MARK: - Team
public struct Teams: Codable {
    var teams: [Team]
}
public struct Team: Codable {
    public let idTeam: String
    public let idAPIfootball: String
    public let strTeam: String
    public let strTeamShort: String
    public let strAlternate: String
    public let strTeamBadge: String
    
    enum CodingKeys: String, CodingKey {
        case idTeam = "idTeam"
        case idAPIfootball = "idAPIfootball"
        case strTeam = "strTeam"
        case strTeamShort = "strTeamShort"
        case strAlternate = "strAlternate"
        case strTeamBadge = "strTeamBadge"
    }
}
