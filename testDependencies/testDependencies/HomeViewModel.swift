//
//  HomeViewModel.swift
//  testDependencies
//
//  Created by Carolina Zuñiga on 12/4/25.
//

import Foundation
import Dependencies
@Observable
final class HomeViewModel{
    @ObservationIgnored
    @Dependency(\.date) var date
    func doSomething()
    {
        print(date.now)
    }
}
