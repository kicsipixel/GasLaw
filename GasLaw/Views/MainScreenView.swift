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
                HStack {
                    Slider(value: $pressureValue, in: 0...280)
                        .rotationEffect(.degrees(-90))
                        .frame(width: DrawingDimensions.drawHeight * 0.8, height: 5, alignment: .center)
                    PressureDrawViewRepresentable(pressureValue: pressureValue)
                        .frame(width: DrawingDimensions.drawWidth, height: DrawingDimensions.drawHeight)
                }
                
                // Volume Gauge with slider
                HStack {
                    Slider(value: $volumeValue, in: 0...280)
                        .rotationEffect(.degrees(-90))
                        .frame(width: DrawingDimensions.drawHeight * 0.8, height: 5, alignment: .center)
                    VolumeDrawViewRepresentable(volumeValue: volumeValue)
                        .frame(width: DrawingDimensions.drawWidth, height: DrawingDimensions.drawHeight)
                }
                
                
                // Temperature Gauge with slider
                HStack {
                    Slider(value: $temperatureValue, in: 0...280)
                        .rotationEffect(.degrees(-90))
                        .frame(width: DrawingDimensions.drawHeight * 0.8, height: 5, alignment: .center)
                    TemperatureDrawViewRepresentable(temperatureValue: temperatureValue)
                        .frame(width: DrawingDimensions.drawWidth, height: DrawingDimensions.drawHeight)
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
