import XCTest
@testable import Razecore

final class RazecoreTests: XCTestCase {
    func testRazeColorsAreEqual(){
        let color = Razecore.colorFromHexString("006736")
        XCTAssertEqual(color, Razecore.razeColor)
    }
    
    func testColorRedEqual(){
        let color = Razecore.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
    
    func testSecondaryRazeColorsAreEqual(){
        let color = Razecore.colorFromHexString("FCFFFD")
        XCTAssertEqual(color, Razecore.secondaryRazeColor)
    }
    static var allTests = [
        ("testColorRedEqual", testColorRedEqual),
        ("testRazeColorAreEqual", testRazeColorsAreEqual),
        ("testSecondaryRazeColorsAreEqual", testSecondaryRazeColorsAreEqual)
    ]
}
