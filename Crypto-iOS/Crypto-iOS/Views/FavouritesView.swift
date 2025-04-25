//
//  FavouritesView.swift
//  Crypto-iOS
//
//  Created by Carolina Zuñiga on 24/4/25.
//

import Foundation
import SwiftUI
struct FavouritesView: View{
    @State var viewModel: FavouritesViewModel = .init()
    var body: some View{
        List{
            ForEach(viewModel.favourites, id: \.self){ favourite in
                Text(favourite)
            }
        }
        .listStyle(.plain)
        
            .task{
                await viewModel.getFavourites()
            }
    }
}
#Preview {
    FavouritesView()
}
