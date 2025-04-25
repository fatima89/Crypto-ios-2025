//
//  Crypto_iOSApp.swift
//  Crypto-iOS
//
//  Created by Carolina Zuñiga on 11/4/25.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      FirebaseApp.configure()
        // DB
      return true
    }
    
  }
// Universal link, monzo://userID/Transfer. Busca la app dentro del dispositivo que maneje esta url pichincha://transfer/userId?monto=10

@main
struct Crypto_iOSApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            AppTabView()
        }
    }
}
