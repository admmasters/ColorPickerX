//
//  colorPickerUtils.swift
//  ColorPickerX
//
//  Created by Matthew Revell on 26/07/2016.
//  Copyright © 2016 Matthew Revell. All rights reserved.
//

import Cocoa

public func dismissPicker(picker: NSColorWell) {
  NSColorPanel.sharedColorPanel().orderOut(nil)
  picker.deactivate()
}