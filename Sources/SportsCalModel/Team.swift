// MARK: - Team
public struct Team: Codable {
    let idTeam: String
    let idAPIfootball: String
    let strTeam: String
    let strTeamShort: String
    let strAlternate: String
    let strTeamBadge: String
    
    enum CodingKeys: String, CodingKey {
        case idTeam = "idTeam"
        case idAPIfootball = "idAPIfootball"
        case strTeam = "strTeam"
        case strTeamShort = "strTeamShort"
        case strAlternate = "strAlternate"
        case strTeamBadge = "strTeamBadge"
    }
}
