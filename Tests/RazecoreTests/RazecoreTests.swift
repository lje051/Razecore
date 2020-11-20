import XCTest
@testable import Razecore

final class RazecoreTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
      //  XCTAssertEqual(Razecore().text, "Hello, World!")
    }

    
    func testColorRedEqual(){
        let color = Razecore.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
    static var allTests = [
        ("testExample", testColorRedEqual),
    ]
}
