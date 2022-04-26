//
//  Search.swift
//  MOLADeeplink
//
//  Created by Topik Mujianto on 22/04/22.
//

import SwiftUI

struct SearchView: View {
    @EnvironmentObject var appData: AppDataModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(movies) { movie in
                    NavigationLink(tag: movie.id, selection: $appData.currentDetailPage) {
                        MovieDetailView(movie: movie)
                    } label: {
                        VStack(alignment: .leading, spacing: 8) {
                            Text(movie.title)
                                .padding(.top, 8)
                            Text(movie.description)
                                .padding(.bottom, 8)
                              
                        }
                    }
                }
            }
            .navigationTitle("Search")
            .toolbar {
                Button("GOTO NAV LINK 3") {
                    appData.currentDetailPage = movies[1].id
                }
            }
        }
    }
}
