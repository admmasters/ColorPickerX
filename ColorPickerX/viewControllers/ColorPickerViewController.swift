//
//  ViewController.swift
//  ColorPickerX
//
//  Created by Matthew Revell on 25/07/2016.
//  Copyright © 2016 Matthew Revell. All rights reserved.
//

import Cocoa
import ReSwift

class ColorPickerViewController: BaseViewController, StoreSubscriber {
  
  let WIDTH = 320.0
  let HEIGHT = 128.0
  let NO_COLOR_MESSAGE = "Pick a color"
  
  @IBOutlet weak var colorText: NSTextField!
  @IBOutlet weak var colorPicker: NSColorWell!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    mainStore.subscribe(self)
  }
  
  override func viewDidAppear() {
    super.viewDidAppear()
    self.bringWindowToFront()
  }
  
  func colorIsPasteable(state: AppState) -> Bool {
    return state.colorText.characters.count > 0
  }
    
  func newState(state: AppState) {
    colorText.stringValue = colorIsPasteable(state) ? "\(state.colorText)" : NO_COLOR_MESSAGE
  }
  
  @IBAction func onColorChanged(sender: NSColorWell) {
    mainStore.dispatch(COLOR_CHANGED(color: sender.color))
  }
  
  @IBAction func onBackgroundTapped(sender: NSButton) {
    mainStore.dispatch(COPY_CURRENT_COLOR_TO_CLIPBOARD())
    
    if colorIsPasteable(mainStore.state) {
      dismissPicker(colorPicker)
      let whiteFlash = WhiteFlash(frame: CGRectMake(0, 0, view.frame.width, view.frame.height));
      view.addSubview(whiteFlash)
      whiteFlash.fadeOut()
    }
  }

}

