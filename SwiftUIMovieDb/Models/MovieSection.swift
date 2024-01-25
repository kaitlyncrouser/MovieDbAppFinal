//
//  MovieSection.swift
//  SwiftUIMovieDb
//
//  Created by Student on 1/24/24.
//

import Foundation

struct MovieSection: Identifiable {
    
    let id = UUID()
    
    let movies: [Movie]
    let endpoint: MovieListEndpoint
    var title: String {
        endpoint.description
    }
    
    var thumbnailType: MovieThumbnailType {
        endpoint.thumbnailType
    }
}

fileprivate extension MovieListEndpoint {
    
    var thumbnailType: MovieThumbnailType {
        switch self {
        case .nowPlaying:
            return .poster()
        default:
            return .backdrop
        }
    }
    
}
