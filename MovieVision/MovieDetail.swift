//
//  MovieDetail.swift
//  MovieVision
//
//  Created by Julio César Fernández Muñoz on 15/1/24.
//

import SwiftUI

struct MovieDetail: View {
    @Environment(\.openWindow) private var open
    let movie: Movie
    
    var body: some View {
        ScrollView {
            HStack(alignment: .top) {
                VStack {
                    AsyncImage(url: movie.poster) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 250)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    } placeholder: {
                        Image(systemName: "popcorn")
                            .resizable()
                            .scaledToFit()
                            .padding()
                            .frame(width: 150, height: 250)
                            .glassBackgroundEffect(in: RoundedRectangle(cornerRadius: 10))
                    }
                    
                    Button {
                        open(id: "poster")
                    } label: {
                        Text("Mostrar poster")
                    }
                }
                
                VStack(alignment: .leading) {
                    Text(movie.title)
                        .font(.title)
                        .bold()
                    Text(movie.director)
                    Text(movie.genres)
                        .font(.subheadline)
                    Text(movie.actorsStr)
                        .font(.headline)
                        .padding(.top)
                    Text(movie.overview)
                        .padding(.top)
                    Text("Runtime: \(movie.runtime) min.")
                        .padding(.top)
                        .bold()
                }
                .padding(.leading)
            }
            .padding()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .navigationTitle(movie.title)
        .navigationBarTitleDisplayMode(.inline)
        .scrollBounceBehavior(.basedOnSize)
    }
}

#Preview {
    NavigationStack {
        MovieDetail(movie: .test)
    }
}
