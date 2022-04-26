//
//  ContentView.swift
//  MOLADeeplink
//
//  Created by Topik Mujianto on 20/04/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appData: AppDataModel
    
    var body: some View {
        HomeView()
            .environmentObject(appData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
