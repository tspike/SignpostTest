//
//  SignpostTestUITests.swift
//  SignpostTestUITests
//
//  Created by Spicher, Tres on 10/13/21.
//

import XCTest

class SignpostTestUITests: XCTestCase {

    override func setUpWithError() throws {
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
    }

    func testSignposts() throws {
        let app = XCUIApplication()
//		No performance data
		let metric = XCTOSSignpostMetric.init(subsystem: "com.tspike.signpost",
											  category: "signpost",
											  name: "SignpostTest")
		
//		Works as expected
//		let metric = XCTOSSignpostMetric.applicationLaunch

		let options = XCTMeasureOptions()	
		options.iterationCount = 1
		measure(metrics: [metric], options: options, block: {
			app.launch()
		})
	}
}
