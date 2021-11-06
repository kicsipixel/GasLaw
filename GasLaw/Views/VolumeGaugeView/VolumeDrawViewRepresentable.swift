//
//  VolumeDrawViewRepresentable.swift
//  GasLaw
//
//  Created by Szabolcs Tóth on 2021. 11. 06..
//

import SwiftUI

struct VolumeDrawViewRepresentable: NSViewRepresentable {
    
    typealias NSViewType = VolumeDrawView
    
    var volumeValue: CGFloat
    
    func makeNSView(context: Context) -> VolumeDrawView {
        return VolumeDrawView(volumeValue: volumeValue)
    }
    
    func updateNSView(_ nsView: VolumeDrawView, context: Context) {
        nsView.volumeValue = volumeValue
    }
}
