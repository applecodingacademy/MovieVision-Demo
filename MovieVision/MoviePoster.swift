//
//  MoviePoster.swift
//  MovieVision
//
//  Created by Julio César Fernández Muñoz on 15/1/24.
//

import SwiftUI

struct MoviePoster: View {
    let movie: Movie
    
    var body: some View {
        AsyncImage(url: movie.poster) { image in
            image
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
        } placeholder: {
            Image(systemName: "popcorn")
                .resizable()
                .scaledToFit()
                .padding()
                .glassBackgroundEffect(in: RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    MoviePoster(movie: .test)
}
