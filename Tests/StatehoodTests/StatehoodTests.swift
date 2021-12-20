import XCTest
@testable import Statehood

final class StatehoodTests: XCTestCase {
    func testAllUSPSAbbreviationsUnique() {
        var seen = Set<String>()
        
        State.allCases.forEach {
            XCTAssertFalse(seen.contains($0.uspsAbbreviation), "Duplicate: \($0)")
            seen.insert($0.uspsAbbreviation)
            
        }
        
    }
    
}
