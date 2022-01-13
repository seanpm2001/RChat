//
//  RChatApp.swift
//  RChat
//
//  Created by Andrew Morgan on 23/11/2020.
//

import SwiftUI
import RealmSwift

let appConfiguration = AppConfiguration(baseURL: "https://realm-dev.mongodb.com", transport: nil, localAppName: "RChat", localAppVersion: "1")
let app = RealmSwift.App(id: "rchat-xxxxx", configuration: appConfiguration) // TODO: Set the Realm application ID

@main
struct RChatApp: SwiftUI.App {
    @StateObject var state = AppState()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(state)
        }
    }
}
