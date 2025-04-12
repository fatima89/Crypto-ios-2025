//
//  AssetViewStateTests.swift
//  Crypto-iOSTests
//
//  Created by Carolina Zuñiga on 12/4/25.
//

import Foundation
import Testing

struct AssetViewStateTests{
    @Test func percentagePositive() async throws {
        let viewState = AssetViewState(
            .init(
                id: "bitcoin",
                name: "Bitcoin",
                symbol: "BTC",
                priceUsd: "80123.12",
                changePercent24Hr: "20.121212"
            ))
    }
    @Test func percentageNegative() async throws {
        let viewState = AssetViewState(
            .init(
                id: "bitcoin",
                name: "Bitcoin",
                symbol: "BTC",
                priceUsd: "80123.12",
                changePercent24Hr: "20.121212"
            ))
    }
}
