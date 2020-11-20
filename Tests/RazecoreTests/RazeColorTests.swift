import XCTest
@testable import Razecore

final class RazeColorTests: XCTestCase {
    func testRazeColorsAreEqual(){
        let color = Razecore.Color.fromHexString("006736")
        XCTAssertEqual(color, Razecore.Color.razeColor)
    }
    
    func testColorRedEqual(){
        let color = Razecore.Color.fromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
    
    func testSecondaryRazeColorsAreEqual(){
        let color = Razecore.Color.fromHexString("FCFFFD")
        XCTAssertEqual(color, Razecore.Color.secondaryRazeColor)
    }
    static var allTests = [
        ("testColorRedEqual", testColorRedEqual),
        ("testRazeColorAreEqual", testRazeColorsAreEqual),
        ("testSecondaryRazeColorsAreEqual", testSecondaryRazeColorsAreEqual)
    ]
}
