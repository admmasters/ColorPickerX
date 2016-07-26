//
//  WhiteFlash.swift
//  ColorPickerX
//
//  Created by Matthew Revell on 26/07/2016.
//  Copyright © 2016 Matthew Revell. All rights reserved.
//

import Cocoa

public class WhiteFlash: ColorFlash {
  override init(frame frameRect: NSRect) {
    super.init(frame: frameRect, color: NSColor.whiteColor())
  }
  
  required public init(coder: NSCoder) {
    super.init(coder: coder)
  }
}
