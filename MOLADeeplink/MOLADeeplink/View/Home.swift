//
//  Home.swift
//  MOLADeeplink
//
//  Created by Topik Mujianto on 21/04/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var appData: AppDataModel
    
    var body: some View {
        TabView(selection: $appData.currentTab) {
            Text("Home")
                .tag(Tab.home)
                .environmentObject(appData)
                .tabItem {
                    Image(systemName: "house.fill")
                }
            
            SearchView()
                .tag(Tab.search)
                .environmentObject(appData)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Settings")
                .tag(Tab.settings)
                .environmentObject(appData)
                .tabItem {
                    Image(systemName: "gearshape.fill")
                }
        }
    }
}
