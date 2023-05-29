//
//  ActorModel.swift
//  MovieTrack
//
//  Created by Aaron Wilson on 5/12/23.
//

import Foundation

struct ActorQuery: Codable {
    let page: Int
    let results: [ActorModel]
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

struct ActorModel: Codable, Identifiable {
    let adult: Bool
    let gender, id: Int
    let knownForDepartment, name, originalName: String
    let popularity: Double
    let profilePath: String?
    let knownFor: [TitleModel]

    enum CodingKeys: String, CodingKey {
        case adult, gender, id
        case knownForDepartment = "known_for_department"
        case name
        case originalName = "original_name"
        case popularity
        case profilePath = "profile_path"
        case knownFor = "known_for"
    }
}
