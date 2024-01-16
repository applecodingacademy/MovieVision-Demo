//
//  MovieRow.swift
//  MovieVision
//
//  Created by Julio César Fernández Muñoz on 15/1/24.
//

import SwiftUI

struct MovieRow: View {
    let movie: Movie
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(movie.title)
            Text(movie.director)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .tag(movie)
    }
}

#Preview {
    MovieRow(movie: .test)
}
