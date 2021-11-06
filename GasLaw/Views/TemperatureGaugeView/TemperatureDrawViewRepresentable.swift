//
//  TemperatureDrawViewRepresentable.swift
//  GasLaw
//
//  Created by Szabolcs Tóth on 2021. 11. 06..
//

import SwiftUI

import SwiftUI

struct TemperatureDrawViewRepresentable: NSViewRepresentable {
    
    typealias NSViewType = TemperatureDrawView
    
    var temperatureValue: CGFloat
    
    func makeNSView(context: Context) -> TemperatureDrawView {
        return TemperatureDrawView(temperatureValue: temperatureValue)
    }
    
    func updateNSView(_ nsView: TemperatureDrawView, context: Context) {
        nsView.temperatureValue = temperatureValue
    }
}
