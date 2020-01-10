//
//  CustomWindowController.swift
//  CustomWindow
//
//  Created by Szabolcs Toth on 10/01/2020.
//  Copyright © 2020 purzelbaum.hu. All rights reserved.
//

import Cocoa

class CustomWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        self.configureWindowAppearance()
        
    }
    
    func configureWindowAppearance() {
        if let window = window {
            if let view = window.contentView {
                view.wantsLayer = true
                view.layer?.backgroundColor = NSColor.white.cgColor
                window.titleVisibility = .hidden
                window.styleMask.remove(.closable)
                window.styleMask.remove(.miniaturizable)
                window.styleMask.remove(.resizable)
                window.titlebarAppearsTransparent = true
                window.styleMask.insert(.fullSizeContentView)
            }
        }
    }

}
