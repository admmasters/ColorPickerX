//
//  color.swift
//  ColorPickerX
//
//  Created by Matthew Revell on 25/07/2016.
//  Copyright © 2016 Matthew Revell. All rights reserved.
//

import Cocoa
import ReSwift

struct ColorReducer: Reducer {
  
  let NO_COLOR_TEXT = "Pick a color"
  
  func handleAction(action: Action, state: AppState?) -> AppState {
    var state = state ?? AppState()
    
    switch action {
    case let action as COLOR_CHANGED:
      state.colorText = action.color.getHexString()
    case _ as COPY_CURRENT_COLOR_TO_CLIPBOARD:
      if (!copyToClipboard(state.colorText)) {
        state.errorMessage = "Failed to copy to clipboard - try again"
      }
      break;
    default:
      state.colorText = NO_COLOR_TEXT
    }
    
    return state
  }
  
}