//
//  MyViewController.swift
//  nostoryboard
//
//  Created by Szabolcs Toth on 11/01/2020.
//  Copyright © 2020 purzelbaum.hu. All rights reserved.
//

import Cocoa

class MyViewController: NSViewController { 
    
       override func loadView() {
            let rect = NSRect(x: 0, y: 0, width: 480, height: 240)
            view = NSView(frame: rect)
            view.wantsLayer = true
            view.layer?.backgroundColor = NSColor.white.cgColor
        
            let label = NSTextField()
            label.frame = CGRect(x: view.bounds.width/2-50, y: view.bounds.height/2, width: 100, height: 44)
            label.stringValue = "Hello, World!"
            label.backgroundColor = .white
            label.isBezeled = false
            label.isEditable = false
            label.sizeToFit()
            view.addSubview(label)
       }

    }
    
    
