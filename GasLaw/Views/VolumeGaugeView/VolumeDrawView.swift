//
//  VolumeDrawView.swift
//  GasLaw
//
//  Created by Szabolcs Tóth on 2021. 11. 06..
//

import Cocoa

class VolumeDrawView: NSView {
    
    init(volumeValue: CGFloat) {
        self.volumeValue = volumeValue
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var volumeValue: CGFloat {
        didSet {
            self.needsDisplay = true
        }
    }
    
    override func draw(_ dirtyRect: NSRect) {
        Gauges.drawVolume(frame: NSRect(x: 0, y: 0, width: DrawingDimensions.drawWidth, height: DrawingDimensions.drawHeight), volumeValue: -volumeValue)
    }
}
