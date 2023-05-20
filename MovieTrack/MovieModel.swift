//
//  MovieModel.swift
//  MovieTrack
//
//  Created by Aaron Wilson on 5/9/23.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

// MARK: - Dates
struct Dates: Codable {
    let maximum, minimum: String
}

// MARK: - Query
struct Query: Codable {
    let dates: Dates?
    let page: Int
    let results: [TitleModel]
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case dates, page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Result
struct TitleModel: Codable, Identifiable {
    let adult: Bool
    let backdropPath: String?
    let genreIDS: [Int]
    let id: Int
    let originalLanguage, originalTitle, overview, firstAirDate: String?
    let popularity: Double
    let posterPath: String?
    let releaseDate, title: String?
    let video: Bool?
    let voteAverage: Double
    let voteCount: Int
    let mediaType: MediaType?
    let viewedStatus: Bool = false
    let notes: String?
    let originCountry: [String]?

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case id
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case mediaType = "media_type"
        case originCountry = "origin_country"
        case firstAirDate = "first_air_date"
        case notes
    }
    enum MediaType: String, Codable {
        case movie = "movie"
        case tv = "tv"
    }
    
}
/*
 JSON Response:
 "adult": false,
             "backdrop_path": null,
             "genre_ids": [],
             "id": 187112,
             "original_language": "en",
             "original_title": "Taylor",
             "overview": "Mystery woman arrives in small mountain hallmark type town to attend a memorial or perhaps just to find resolve in her own life. She stays at a bed and breakfast run by a recent widower and a relationship develops. Some towns people suspect a romance, others just want this mystery girl to go away for no apparent reason other than she is an outsider. The mystery unravels and the girl's presence is cloaked in a deeper need that she has. What is her connection to this town, these people?",
             "popularity": 0.622,
             "poster_path": null,
             "release_date": "2005-11-01",
             "title": "Taylor",
             "video": false,
             "vote_average": 6.0,
             "vote_count": 1
 */

