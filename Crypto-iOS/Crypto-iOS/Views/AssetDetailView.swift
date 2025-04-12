//
//  AssetDetailView.swift
//  Crypto-iOS
//
//  Created by Carolina Zuñiga on 12/4/25.
//

import Foundation
import SwiftUI

struct AssetDetailView: View {
    let asset: Asset
    var body: some View {
        Text(asset.name)
            .navigationTitle(asset.name)
    }
}

struct AssetDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AssetDetailView(
            asset: .init(id: "bitcoin",
                         name: "Bitcoin",
                         symbol: "BTC",
                         priceUsd: "84.98899899",
                         changePercent24Hr: "787.8978778")
        )
    }
}
