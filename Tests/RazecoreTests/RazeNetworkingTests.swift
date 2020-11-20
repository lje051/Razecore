//
//  RazeNetworkingTests.swift
//  RazecoreTests
//
//  Created by Jeeeun Lim on 2020/11/20.
//

import XCTest
@testable import Razecore

final class RazeNetworkingTests: XCTestCase {

    func testLoadDataCell(){
        let manager = Razecore.Networking.Manager()
        let expectation = XCTestExpectation(description: "called for data")
        guard let url = URL(string: "https://raywenderlich.com") else {
            return XCTFail("could not create url properly")
        }
        
        manager.loadData(from:url) {
            result in
            switch result {
            case .success(let returnedData):
                XCTAssertNotNil(returnedData, "response data is nil")
            case .failure(let error) :
                XCTFail(error?.localizedDescription ?? "error forming error result")
            }
        }
    }
 
  

   static var allTests = [
   ("testLoadDataCell", testLoadDataCell)
   ]

}
