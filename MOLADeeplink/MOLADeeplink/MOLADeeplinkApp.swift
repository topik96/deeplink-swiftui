//
//  MOLADeeplinkApp.swift
//  MOLADeeplink
//
//  Created by Topik Mujianto on 20/04/22.
//

import SwiftUI

@main
struct MOLADeeplinkApp: App {
    @StateObject var appData: AppDataModel = AppDataModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appData)
                .onOpenURL { url in
                    if appData.checkDeeplink(url: url) {
                        print("FROM DEEPLINK")
                    } else {
                        print("FALLBACK DEEPLINK ")
                    }
                }
        }
    }
}
