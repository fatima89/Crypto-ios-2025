//
//  AssetList.swift
//  Crypto-iOS
//
//  Created by Carolina Zuñiga on 11/4/25.
//
import SwiftUI

struct AssetList:View {
    var viewModel: AssetListViewModel = .init()
   // @ObservedObject var viewModel: AssetListViewModel = .init()
    var body: some View {
        NavigationView{
            Text(viewModel.errorMessage ?? "")
            List {
                ForEach(viewModel.assets) { asset in 
                    NavigationLink{
                        AssetDetailView(asset: asset)
                    }label: {
                        AssetView(assetViewState: .init(asset))
                    }
                    
                }
            }.listStyle(.plain)
            /* .onAppear{
             
             }.onDisappear{
             
             }*/.task{
                 await viewModel.fetchAssets()
             }
             .navigationTitle("Home")
        }
    }
}

struct AssetList_Previews: PreviewProvider {
    static var previews: some View {
        AssetList()
    }
}
