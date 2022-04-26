//
//  DeeplinkAppData.swift
//  MOLADeeplink
//
//  Created by Topik Mujianto on 20/04/22.
//

import SwiftUI

class AppDataModel: ObservableObject {
    @Published var currentTab: Tab = .home
    @Published var currentDetailPage: String?
    
    func checkDeeplink(url: URL) -> Bool {
        guard let host = URLComponents(url: url, resolvingAgainstBaseURL: true)?.host else {
            return false
        }
        
        print("checkDeeplink \(host)")
        if host == Tab.home.rawValue {
            currentTab = .home
        } else if host == Tab.search.rawValue {
            currentTab = .search
        } else if host == Tab.settings.rawValue {
            currentTab = .settings
        } else {
           return checkInternalLinks(host: host)
        }
        return true
    }
    
    func checkInternalLinks(host: String) -> Bool {
        if let index = movies.firstIndex(where: { movie in
            return movie.id == host
        }) {
            currentTab = .search
            currentDetailPage =  movies[index].id
            return true
        }
        return true
    }
}

enum Tab: String {
    case home
    case search
    case settings
}
