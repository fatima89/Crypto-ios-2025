//
//  AppTapView.swift
//  Crypto-iOS
//
//  Created by Carolina Zuñiga on 12/4/25.
//

import Foundation
import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                AssetList()
            }
            Tab("Favourites", systemImage: "star") {
                Text("Favourites")
            }
            Tab("Settings", systemImage: "gear") {
                SettingsView()
            }
        }
    }
}
struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTapView()
    }
}
