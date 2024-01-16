//
//  MovieVisionApp.swift
//  MovieVision
//
//  Created by Julio César Fernández Muñoz on 15/1/24.
//

import SwiftUI

@main
struct MovieVisionApp: App {
    @State var moviesVM = MoviesVM()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(moviesVM)
        }
        
        WindowGroup(id: "poster") {
            if let selection = moviesVM.selection {
                MoviePoster(movie: selection)
            }
        }
        .defaultSize(CGSize(width: 150, height: 250))
    }
}
