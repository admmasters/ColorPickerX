//
//  pasteUtils.swift
//  ColorPickerX
//
//  Created by Matthew Revell on 25/07/2016.
//  Copyright © 2016 Matthew Revell. All rights reserved.
//

import Cocoa

public func copyToClipboard(value: String) -> Bool {
  let pasteBoard = NSPasteboard.generalPasteboard()
  pasteBoard.clearContents()
  let text = mainStore.state.colorText
  return pasteBoard.writeObjects([text])
}
