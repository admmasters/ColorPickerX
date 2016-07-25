//
//  Colors.swift
//  ColorPickerX
//
//  Created by Matthew Revell on 25/07/2016.
//  Copyright © 2016 Matthew Revell. All rights reserved.
//

import Cocoa

public extension NSColor {
  func getHexString() -> String {
    let red = Int(round(self.redComponent * 0xFF))
    let grn = Int(round(self.greenComponent * 0xFF))
    let blu = Int(round(self.blueComponent * 0xFF))
    let hexString = NSString(format: "#%02X%02X%02X", red, grn, blu)
    return hexString as String
  }
}