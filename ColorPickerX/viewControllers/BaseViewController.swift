//
//  BaseViewController.swift
//  ColorPickerX
//
//  Created by Matthew Revell on 26/07/2016.
//  Copyright © 2016 Matthew Revell. All rights reserved.
//

import Cocoa

public class BaseViewController: NSViewController {
  public func bringWindowToFront() {
    view.window?.level = Int(CGWindowLevelForKey(.FloatingWindowLevelKey))
  }
}
