//
//  AppTapView.swift
//  Crypto-iOS
//
//  Created by Carolina Zuñiga on 12/4/25.
//

import Foundation
import SwiftUI

struct AppTapView: View {
    var body: some View {
        TabView{
            .tabItem {
                Label("Received", systemImage: "tray.and.house.fill")
            }
            /*Tab("Home", systemImage: "house"){
                AssetList()
                    .navigationTitle("Home")
            }
            Tab("Favourities", systemImage: "star"){
                Text ("Favoutities")
            }
            Tab("Settings", systemImage: "gear"){
                Text ("Settings")
            }*/
        }
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTapView()
    }
}
