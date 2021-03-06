//
//  Units.swift
//  GasLaw
//
//  Created by Szabolcs Tóth on 2021. 11. 06..
//

import Foundation

enum StartingStage {
    // 101.325 kPa
    static let atmosphericPressure: Float = 101.325
    // 400cm3
    static let cylinderVolume: Float = 0.0004
    // 20ºC in K
    static let roomTemperature: Float = 293.15
}

enum DrawingDimensions {
    static let drawWidth: CGFloat = 250
    static let drawHeight: CGFloat = 250
}
