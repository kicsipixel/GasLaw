//
//  MainScreenView.swift
//  GasLaw
//
//  Created by Szabolcs Tóth on 2021. 11. 06..
//

import SwiftUI

struct MainScreenView: View {
    
    @State private var pressureValue: CGFloat = 0
    @State private var volumeValue: CGFloat = 0
    @State private var temperatureValue: CGFloat = 0
    
    var body: some View {
        VStack {
            // Title
            Text("Ideal Gas Law")
                .font(.largeTitle)
                .bold()
            
            Spacer()
            
            // Gauges
            HStack {
                
                // Pressure Gauge with slider
                VStack {
                    PressureDrawViewRepresentable(pressureValue: pressureValue)
                        .frame(width: DrawingDimensions.drawWidth, height: DrawingDimensions.drawHeight)
                    
                    Slider(value: $pressureValue, in: 0...280)
                        .frame(width: DrawingDimensions.drawWidth * 0.7)
                }
                .padding()
                
                // Volume Gauge with slider
                VStack {
                    VolumeDrawViewRepresentable(volumeValue: volumeValue)
                        .frame(width: DrawingDimensions.drawWidth, height: DrawingDimensions.drawHeight)
                    
                    Slider(value: $volumeValue, in: 0...280)
                        .frame(width: DrawingDimensions.drawWidth * 0.7)
                }
                .padding()
                
                
                // Temperature Gauge with slider
                VStack {
                    TemperatureDrawViewRepresentable(temperatureValue: temperatureValue)
                        .frame(width: DrawingDimensions.drawWidth, height: DrawingDimensions.drawHeight)
                    
                    Slider(value: $temperatureValue, in: 0...280)
                        .frame(width: DrawingDimensions.drawWidth * 0.7)
                }
                
            }
            
            Spacer()
        }
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
