import XCTest
@testable import Statehood

final class StatehoodTests: XCTestCase {
    func testNameFormatting() {
        let stateNames: [(String, State)] = [
            ("Deleware", .deleware),
            ("Pennsylvania", .pennsylvania),
            ("New Jersey", .newJersey),
            ("Georgia", .georgia),
            ("Connecticut", .connecticut),
            ("Massachusetts", .massachusetts),
            ("Maryland", .maryland),
            ("South Carolina", .southCarolina),
            ("New Hampshire", .newHampshire),
            ("Virginia", .virginia),
            ("New York", .newYork),
            ("North Carolina", .northCarolina),
            ("Rhode Island", .rhodeIsland),
            ("Vermont", .vermont),
            ("Kentucky", .kentucky),
            ("Tennessee", .tennessee),
            ("Ohio", .ohio),
            ("Louisiana", .louisiana),
            ("Indiana", .indiana),
            ("Mississippi", .mississippi),
            ("Illinois", .illinois),
            ("Alabama", .alabama),
            ("Maine", .maine),
            ("Missouri", .missouri),
            ("Arkansas", .arkansas),
            ("Michigan", .michigan),
            ("Florida", .florida),
            ("Texas", .texas),
            ("Iowa", .iowa),
            ("Wisconsin", .wisconsin),
            ("California", .california),
            ("Minnesota", .minnesota),
            ("Oregon", .oregon),
            ("Kansas", .kansas),
            ("West Virginia", .westVirginia),
            ("Nevada", .nevada),
            ("Nebraska", .nebraska),
            ("Colorado", .colorado),
            ("North Dakota", .northDakota),
            ("South Dakota", .southDakota),
            ("Montana", .montana),
            ("Washington", .washington),
            ("Idaho", .idaho),
            ("Wyoming", .wyoming),
            ("Utah", .utah),
            ("Oklahoma", .oklahoma),
            ("New Mexico", .newMexico),
            ("Arizona", .arizona),
            ("Alaska", .alaska),
            ("Hawaii", .hawaii),
        ]
        
        for (stateName, state) in stateNames {
            XCTAssertEqual(stateName, state.fullName)
            
        }
        
    }
    
    func testAllUSPSAbbreviationsUnique() {
        var seen = Set<String>()
        
        State.allCases.forEach {
            XCTAssertFalse(seen.contains($0.uspsAbbreviation), "Duplicate: \($0)")
            seen.insert($0.uspsAbbreviation)
            
        }
        
    }
    
}
