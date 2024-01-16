//
//  MovieVM.swift
//  MovieVision
//
//  Created by Julio César Fernández Muñoz on 15/1/24.
//

import SwiftUI

@Observable
final class MoviesVM {
    let interactor: Interactor
    
    var movies: [Movie]
    
    var selection: Movie?
    
    init(interactor: Interactor = DataInteractor()) {
        self.interactor = interactor
        do {
            movies = try interactor.loadMovie()
        } catch {
            movies = []
        }
    }
}
