//
//  Movie.swift
//  MOLADeeplink
//
//  Created by Topik Mujianto on 20/04/22.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var title: String
    var description: String
}

var movies: [Movie] = [
    Movie(id: "vd12345", title: "The best way", description: "The best way is movie from Mobile Legend"),
    Movie(id: "vd56783", title: "The marksman", description: "The marksman is movie from Mobile Legend"),
    Movie(id: "vd52323", title: "The test", description: "The test is movie from Mobile Legend")
]
