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
                .frame(width: 980, height: 400,alignment: .center)
        }.windowStyle(.hiddenTitleBar)
    }
}
