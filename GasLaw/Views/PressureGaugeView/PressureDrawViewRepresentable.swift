//
//  PressureDrawViewRepresentable.swift
//  GasLaw
//
//  Created by Szabolcs Tóth on 2021. 11. 06..
//

import SwiftUI

struct PressureDrawViewRepresentable: NSViewRepresentable {
    
    typealias NSViewType = PressureDrawView
    
    var pressureValue: CGFloat
    
    func makeNSView(context: Context) -> PressureDrawView {
        return PressureDrawView(pressureValue: pressureValue)
    }
    
    func updateNSView(_ nsView: PressureDrawView, context: Context) {
        nsView.pressureValue = pressureValue
    }
}
