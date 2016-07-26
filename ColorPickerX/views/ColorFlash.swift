//
//  WhiteFlash.swift
//  ColorPickerX
//
//  Created by Matthew Revell on 26/07/2016.
//  Copyright © 2016 Matthew Revell. All rights reserved.
//

import Cocoa

public class ColorFlash: NSView {
  
  var color = NSColor.whiteColor()
  
  override init(frame frameRect: NSRect) {
    super.init(frame:frameRect)
  }
  
  required public init(coder: NSCoder) {
    super.init(coder: coder)!
  }
  
  init(frame frameRect: NSRect, color: NSColor) {
    super.init(frame:frameRect);
    self.color = color
  }
  
  public override func drawRect(dirtyRect: NSRect) {
    NSColor.whiteColor().setFill()
    NSRectFill(dirtyRect)
    super.drawRect(dirtyRect)
  }
  
  public func fadeOut() {
    weak var animator = self.animator()
    weak var weakSelf = self
    
    NSAnimationContext.runAnimationGroup({ context in
      context.duration = 1
      animator?.alphaValue = 0
    }) {
      weakSelf?.hidden = true
      weakSelf?.removeFromSuperview()
    }
    
  }
}
