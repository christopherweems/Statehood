// State.swift
// 11/11/2020

import Algorithms
import Foundation

public enum State: String, CaseIterable, Hashable, Sendable {
    case deleware       = "DE"
    case pennsylvania   = "PA"
    case newJersey      = "NJ"
    case georgia        = "GA"
    case connecticut    = "CT"
    case massachusetts  = "MA"
    case maryland       = "MD"
    case southCarolina  = "SC"
    case newHampshire   = "NH"
    case virginia       = "VA"
    case newYork        = "NY"
    case northCarolina  = "NC"
    case rhodeIsland    = "RI"
    case vermont        = "VT"
    case kentucky       = "KY"
    case tennessee      = "TN"
    case ohio           = "OH"
    case louisiana      = "LA"
    case indiana        = "IN"
    case mississippi    = "MS"
    case illinois       = "IL"
    case alabama        = "AL"
    case maine          = "ME"
    case missouri       = "MO"
    case arkansas       = "AR"
    case michigan       = "MI"
    case florida        = "FL"
    case texas          = "TX"
    case iowa           = "IA"
    case wisconsin      = "WI"
    case california     = "CA"
    case minnesota      = "MN"
    case oregon         = "OR"
    case kansas         = "KS"
    case westVirginia   = "WV"
    case nevada         = "NV"
    case nebraska       = "NE"
    case colorado       = "CO"
    case northDakota    = "ND"
    case southDakota    = "SD"
    case montana        = "MT"
    case washington     = "WA"
    case idaho          = "ID"
    case wyoming        = "WY"
    case utah           = "UT"
    case oklahoma       = "OK"
    case newMexico      = "NM"
    case arizona        = "AZ"
    case alaska         = "AK"
    case hawaii         = "HI"
    
}

extension State {
    public var uspsAbbreviation: String {
        return rawValue
    }
    
}

extension State {
    public var fullName: String {
        "\(self)".chunked { $0.isUppercase || $1.isLowercase }
            .map(\.capitalized)
            .joined(separator: " ")
    }
    
}
