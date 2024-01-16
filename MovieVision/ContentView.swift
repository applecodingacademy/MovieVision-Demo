//
//  ContentView.swift
//  MovieVision
//
//  Created by Julio César Fernández Muñoz on 15/1/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(MoviesVM.self) private var moviesVM
    
    var body: some View {
        @Bindable var bvm = moviesVM
        
        NavigationSplitView {
            List(selection: $bvm.selection) {
                ForEach(moviesVM.movies) { movie in
                    MovieRow(movie: movie)
                }
            }
            .navigationTitle("Movies")
        } detail: {
            if let selection = moviesVM.selection {
                MovieDetail(movie: selection)
            } else {
                ContentUnavailableView("Elige una película",
                                       systemImage: "popcorn", description: Text("Por favor, seleccione una película en la barra lateral."))
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(MoviesVM(interactor: DataInteractorTest()))
}
