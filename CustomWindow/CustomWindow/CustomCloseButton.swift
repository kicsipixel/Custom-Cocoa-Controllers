//
//  CustomCloseButton.swift
//  CustomWindow
//
//  Created by Szabolcs Toth on 10/01/2020.
//  Copyright © 2020 purzelbaum.hu. All rights reserved.
//

import Cocoa

class CustomCloseButton: NSButton {

   var mouseIsInside = false
       
       override func awakeFromNib() {
        self.image = NSImage(named:"Custom close button")
           let trackingArea = NSTrackingArea(rect: self.bounds, options: NSTrackingArea.Options(rawValue: 129), owner: self, userInfo: nil)
           self.addTrackingArea(trackingArea)
       }
       
       override func mouseEntered(with event: NSEvent) {
        self.image = NSImage(named:"Custom on-mouse close button")
           mouseIsInside = true
       }
       
       override func mouseExited(with event: NSEvent) {
           self.image = NSImage(named:"Custom close button")
           mouseIsInside = false
       }
       
       override func mouseDown(with event: NSEvent) {
        self.image = NSImage(named:"Custom pressed close button")
       }
       
       override func mouseUp(with event: NSEvent) {
           if mouseIsInside {
               NSApplication.shared.terminate(nil)
           } else {
               self.image = NSImage(named:"Custom close button")
           }
       }
    
}
