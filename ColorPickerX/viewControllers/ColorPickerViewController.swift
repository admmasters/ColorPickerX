//
//  ViewController.swift
//  ColorPickerX
//
//  Created by Matthew Revell on 25/07/2016.
//  Copyright © 2016 Matthew Revell. All rights reserved.
//

import Cocoa
import ReSwift

class ColorPickerViewController: NSViewController, StoreSubscriber {

  @IBOutlet weak var colorText: NSTextField!
  
  override func viewDidLoad() {
    mainStore.subscribe(self)
    self.preferredContentSize = NSSize(width: 270.0, height: 126.0)
  }
  
  func newState(state: AppState) {
    colorText.stringValue = "\(state.colorText)"
  }
  
  @IBAction func onColorChanged(sender: NSColorWell) {
    mainStore.dispatch(COLOR_CHANGED(color: sender.color))
  }
  
  @IBAction func onBackgroundTapped(sender: NSButton) {
    mainStore.dispatch(COPY_CURRENT_COLOR_TO_CLIPBOARD())
  }

}

