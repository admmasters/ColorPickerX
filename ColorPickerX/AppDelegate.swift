//
//  AppDelegate.swift
//  ColorPickerX
//
//  Created by Matthew Revell on 25/07/2016.
//  Copyright © 2016 Matthew Revell. All rights reserved.
//

import Cocoa
import ReSwift

struct AppState: StateType {
  var colorText: String = ""
  var errorMessage: String = ""
}

let mainStore = Store<AppState>(
  reducer: ColorReducer(),
  state: nil
)

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  func applicationDidFinishLaunching(aNotification: NSNotification) {
    // Insert code here to initialize your application
  }

  func applicationWillTerminate(aNotification: NSNotification) {
    // Insert code here to tear down your application
  }


}

