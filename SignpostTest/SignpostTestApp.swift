//
//  SignpostTestApp.swift
//  SignpostTest
//
//  Created by Spicher, Tres on 10/13/21.
//

import os.signpost
import SwiftUI

let signpostLog = OSLog(subsystem: "com.tspike.signpost", category: "signpost")
let signpostName: StaticString = "SignpostTest"

@main
struct SignpostTestApp: App {
	init() {
		os_signpost(.begin, log: signpostLog, name: signpostName)
		DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(500), execute: {
			os_signpost(.end, log: signpostLog, name: signpostName)
		})
	}
	
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
