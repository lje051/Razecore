import XCTest
@testable import Razecore

final class RazecoreTests: XCTestCase {
    func testRazeColorsAreEqual(){
        let color = Razecore.colorFromHexString("")
        XCTAssertEqual(color, Razecore.razeColor)
    }
    
    func testColorRedEqual(){
        let color = Razecore.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
    static var allTests = [
        ("testExample", testColorRedEqual),
    ]
}
