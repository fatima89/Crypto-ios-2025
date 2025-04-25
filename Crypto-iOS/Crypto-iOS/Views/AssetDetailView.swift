//
//  AssetDetailView.swift
//  Crypto-iOS
//
//  Created by Carolina Zuñiga on 12/4/25.
//

import Foundation
import SwiftUI

struct AssetDetailView: View {
    let viewModel: AssetDetailsViewModel
    
    var body: some View{
        VStack {
            Text(viewModel.asset.name)
            Button {
                viewModel.addFavourites()
                
            }label:{
                Text("Add Favourities")
            }
            
        }
        .navigationTitle(viewModel.asset.name)
        .alert(
            viewModel.errorMessage ?? "", isPresented: $viewModel.showError){
            Button("OK"){
                
            }
        }
        /*let asset: Asset
         var body: some View {
         Text(asset.name)
         .navigationTitle(asset.name)
         }*/
    }
}

struct AssetDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AssetDetailView(
            viewModel: .init(
                asset: .init (
                    id: "bitcoin",
                         name: "Bitcoin",
                         symbol: "BTC",
                         priceUsd: "84.98899899",
                         changePercent24Hr: "787.8978778")
        )
                )
    }
}
