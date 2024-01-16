//
//  Model.swift
//  MovieVision
//
//  Created by Julio César Fernández Muñoz on 15/1/24.
//

import Foundation

struct Movie: Codable, Identifiable, Hashable {
    let id: Int
    let title: String
    let director: String
    let overview: String
    let runtime: Int
    let genre: [String]
    let actors: [String]
    let poster: URL
    
    var genres: String {
        genre.formatted(.list(type: .and))
    }
    
    var actorsStr: String {
        actors.formatted(.list(type: .and))
    }
}
