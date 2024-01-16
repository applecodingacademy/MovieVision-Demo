//
//  DataInteractorTest.swift
//  MovieVision
//
//  Created by Julio César Fernández Muñoz on 15/1/24.
//

import Foundation

struct DataInteractorTest: Interactor {
    func loadMovie() throws -> [Movie] {
        guard let url = Bundle.main.url(forResource: "moviesDBTest", withExtension: "json") else { return [] }
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode([Movie].self, from: data)
    }
}
