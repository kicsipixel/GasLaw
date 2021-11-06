//
//  TemperatureDrawView.swift
//  GasLaw
//
//  Created by Szabolcs Tóth on 2021. 11. 06..
//

import Cocoa

class TemperatureDrawView: NSView {
    
    init(temperatureValue: CGFloat) {
        self.temperatureValue = temperatureValue
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var temperatureValue: CGFloat {
        didSet {
            self.needsDisplay = true
        }
    }
    
    override func draw(_ dirtyRect: NSRect) {
        Gauges.drawTemperature(frame: NSRect(x: 0, y: 0, width: DrawingDimensions.drawWidth, height: DrawingDimensions.drawHeight), temperatureValue: -temperatureValue)
    }
}

