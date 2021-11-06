//
//  PressureDrawView.swift
//  GasLaw
//
//  Created by Szabolcs Tóth on 2021. 11. 06..
//

import Cocoa

class PressureDrawView: NSView {
    
    init(pressureValue: CGFloat) {
        self.pressureValue = pressureValue
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var pressureValue: CGFloat {
        didSet {
            self.needsDisplay = true
        }
    }
    
    override func draw(_ dirtyRect: NSRect) {
        Gauges.drawPressure(frame: NSRect(x: 0, y: 0, width: DrawingDimensions.drawWidth, height: DrawingDimensions.drawHeight), pressureValue: -pressureValue)
    }
}
