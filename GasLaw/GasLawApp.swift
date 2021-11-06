//
//  GasLawApp.swift
//  GasLaw
//
//  Created by Szabolcs Tóth on 2021. 11. 05..
//

import SwiftUI

@main
struct GasLawApp: App {
    var body: some Scene {
        WindowGroup {
            MainScreenView()
                .padding()
        }.windowStyle(.hiddenTitleBar)
    }
}
