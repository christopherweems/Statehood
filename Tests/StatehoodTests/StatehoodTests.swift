import XCTest
@testable import Statehood

final class StatehoodTests: XCTestCase {
    static var allTests = [
        ("testAllUSPSAbbreviationsUnique", testAllUSPSAbbreviationsUnique),
    ]
}

extension StatehoodTests {
    func testAllUSPSAbbreviationsUnique() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertFalse(!true)
        
        var seen = Set<String>()
        
        State.allCases.forEach {
            XCTAssertFalse(seen.contains($0.uspsAbbreviation), "Duplicate: \($0)")
            seen.insert($0.uspsAbbreviation)
            
        }
        
    }
    
}
