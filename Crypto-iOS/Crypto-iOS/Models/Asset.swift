//
//  Asset.swift
//  Crypto-iOS
//
//  Created by Carolina Zuñiga on 11/4/25.
//

import Foundation
struct Asset: Decodable, Identifiable, Equatable{
    let id: String
    let name: String
    let symbol: String
    let priceUsd: String
    let changePercent24Hr: String
    
}
