//
//  MovieDetail.swift
//  MOLADeeplink
//
//  Created by Topik Mujianto on 22/04/22.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: Movie
    
    var body: some View {
        VStack {
            Text(movie.title)
                .padding()
            Text(movie.description)
                .padding()
        }
    }
}
