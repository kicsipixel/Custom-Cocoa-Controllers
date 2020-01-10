//
//  LeftView.swift
//  CustomWindow
//
//  Created by Szabolcs Toth on 10/01/2020.
//  Copyright © 2020 purzelbaum.hu. All rights reserved.
//

import Cocoa

class LeftView: NSView {

    override func awakeFromNib() {
        self.wantsLayer = true
        self.layer?.backgroundColor = NSColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1.0).cgColor
    }
    
}
