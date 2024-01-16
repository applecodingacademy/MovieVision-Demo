//
//  PreviewData.swift
//  MovieVision
//
//  Created by Julio César Fernández Muñoz on 15/1/24.
//

import Foundation

extension Movie {
    static let test = Movie(id: 100,
                            title: "The Shawshank Redemption",
                            director: "Frank Darabont",
                            overview: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
                            runtime: 142,
                            genre: ["Drama"],
                            actors: [
                                "Tim Robbins",
                                "Morgan Freeman",
                                "Bob Gunton",
                                "William Sadler"
                            ], poster: URL(string: "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpg")!)
}
