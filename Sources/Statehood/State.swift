// State.swift
// 11/11/2020

import Algorithms
import Foundation
import unstandard

public enum State: CaseIterable, Hashable {
    case deleware
    case pennsylvania
    case newJersey
    case georgia
    case connecticut
    case massachusetts
    case maryland
    case southCarolina
    case newHampshire
    case virginia
    case newYork
    case northCarolina
    case rhodeIsland
    case vermont
    case kentucky
    case tennessee
    case ohio
    case louisiana
    case indiana
    case mississippi
    case illinois
    case alabama
    case maine
    case missouri
    case arkansas
    case michigan
    case florida
    case texas
    case iowa
    case wisconsin
    case california
    case minnesota
    case oregon
    case kansas
    case westVirginia
    case nevada
    case nebraska
    case colorado
    case northDakota
    case southDakota
    case montana
    case washington
    case idaho
    case wyoming
    case utah
    case oklahoma
    case newMexico
    case arizona
    case alaska
    case hawaii
    
}

public extension State {
    @SingleResult var uspsAbbreviation: String {
        switch self {
        case .deleware: "DE"
        case .pennsylvania: "PA"
        case .newJersey: "NJ"
        case .georgia: "GA"
        case .connecticut: "CT"
        case .massachusetts: "MA"
        case .maryland: "MD"
        case .southCarolina: "SC"
        case .newHampshire: "NH"
        case .virginia: "VA"
        case .newYork: "NY"
        case .northCarolina: "NC"
        case .rhodeIsland: "RI"
        case .vermont: "VT"
        case .kentucky: "KY"
        case .tennessee: "TN"
        case .ohio: "OH"
        case .louisiana: "LA"
        case .indiana: "IN"
        case .mississippi: "MS"
        case .illinois: "IL"
        case .alabama: "AL"
        case .maine: "ME"
        case .missouri: "MO"
        case .arkansas: "AR"
        case .michigan: "MI"
        case .florida: "FL"
        case .texas: "TX"
        case .iowa: "IA"
        case .wisconsin: "WI"
        case .california: "CA"
        case .minnesota: "MN"
        case .oregon: "OR"
        case .kansas: "KS"
        case .westVirginia: "WV"
        case .nevada: "NV"
        case .nebraska: "NE"
        case .colorado: "CO"
        case .northDakota: "ND"
        case .southDakota: "SD"
        case .montana: "MT"
        case .washington: "WA"
        case .idaho: "ID"
        case .wyoming: "WY"
        case .utah: "UT"
        case .oklahoma: "OK"
        case .newMexico: "NM"
        case .arizona: "AZ"
        case .alaska: "AK"
        case .hawaii: "HI"
            
        }
    }
    
}

extension State {
    public var fullName: String {
        "\(self)".chunked { $0.isUppercase || $1.isLowercase }
            .map(\.capitalized)
            .joined(separator: " ")
    }
    
}
