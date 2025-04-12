//
//  AssetView.swift
//  Crypto-iOS
//
//  Created by Carolina Zuñiga on 11/4/25.
//

import SwiftUI
struct AssetViewState{
    let asset: Asset
    init(asset: Asset) {
        self.asset = asset
    }
    var percentageColor: Color{
        percentage >= 0 ? .green : .red
    }
    var percentage: Double{
        Double(asset.changePercent24Hr) ?? 0
    }
    var formattedPrice : String {
        String(format:"%.2f", Double (asset.priceUsd) ?? 0)
    }
    
    var formattedPercentage : String {
        String(format: "%.2f", Double(asset.changePercent24Hr) ?? 0)
    }
    var iconUrl: URL?{
        URL(string: "https://assets.coincap.io/assets/icons/\(asset.symbol.lowercased())@2x.png")
    }
    
}

struct AssetView: View {
    
    let assetViewState: AssetViewState
    
    var body: some View{
        HStack{
            AsyncImage(
                url: assetViewState.iconUrl){
                    image in image.resizable()
                }placeholder: {
                    Image(systemName: "dollarsign.gauge.chart.lethalf.righthalf")
                }.frame(width: 40, height: 40)
            VStack(alignment: .leading){
                Text(assetViewState.symbol).font(.headline)
                Text(assetViewState.name).font(.subheadline).foregroundStyle(.gray).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            }
            Spacer()
            
            Text(assetViewState.formattedPercentage).foregroundStyle(assetViewState.percentageColor).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
            Text(assetViewState.formattedPrice).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
        }.padding(.horizontal)
    }
}
struct AssetView_Previews: PreviewProvider {
    static var previews: some View {
        AssetView(
            AssetViewState: .init(
                .init(
                    id: "bitcoin",
                    name: "Bitcoin",
                    symbol: "BTC",
                    priceUsd: "84.98899899",
                    changePercent24Hr: "787.8978778"
                )
            )
        )
    }
}
