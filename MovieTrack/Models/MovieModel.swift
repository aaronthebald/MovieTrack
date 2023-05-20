//
//  MovieModel.swift
//  MovieTrack
//
//  Created by Aaron Wilson on 5/9/23.
//

import Foundation

struct MovieModel {
    // This file was generated from JSON Schema using quicktype, do not modify it directly.
    // To parse the JSON, add this file to your project and do:
    //
    //   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)


    // MARK: - Welcome
    struct Welcome: Codable {
        let page: Int
        let next: String
        let entries: Int
        let results: [Result]
    }

    // MARK: - Result
    struct Result: Codable {
        let id: String
        let primaryImage: PrimaryImage
        let titleType: TitleType
        let titleText: TitleText
        let releaseYear: ReleaseYear
        let releaseDate: ReleaseDate
        let position: Int
    }

    // MARK: - PrimaryImage
    struct PrimaryImage: Codable {
        let id: String
        let width, height: Int
        let url: String
        let caption: Caption
        let typename: PrimaryImageTypename

        enum CodingKeys: String, CodingKey {
            case id, width, height, url, caption
            case typename = "__typename"
        }
    }

    // MARK: - Caption
    struct Caption: Codable {
        let plainText: String
        let typename: CaptionTypename

        enum CodingKeys: String, CodingKey {
            case plainText
            case typename = "__typename"
        }
    }

    enum CaptionTypename: String, Codable {
        case markdown = "Markdown"
    }

    enum PrimaryImageTypename: String, Codable {
        case image = "Image"
    }

    // MARK: - ReleaseDate
    struct ReleaseDate: Codable {
        let day, month, year: Int
        let typename: ReleaseDateTypename

        enum CodingKeys: String, CodingKey {
            case day, month, year
            case typename = "__typename"
        }
    }

    enum ReleaseDateTypename: String, Codable {
        case releaseDate = "ReleaseDate"
    }

    // MARK: - ReleaseYear
    struct ReleaseYear: Codable {
        let year: Int
        let endYear: JSONNull?
        let typename: ReleaseYearTypename

        enum CodingKeys: String, CodingKey {
            case year, endYear
            case typename = "__typename"
        }
    }

    enum ReleaseYearTypename: String, Codable {
        case yearRange = "YearRange"
    }

    // MARK: - TitleText
    struct TitleText: Codable {
        let text: String
        let typename: TitleTextTypename

        enum CodingKeys: String, CodingKey {
            case text
            case typename = "__typename"
        }
    }

    enum TitleTextTypename: String, Codable {
        case titleText = "TitleText"
    }

    // MARK: - TitleType
    struct TitleType: Codable {
        let text: Text
        let id: ID
        let isSeries, isEpisode: Bool
        let typename: TitleTypeTypename

        enum CodingKeys: String, CodingKey {
            case text, id, isSeries, isEpisode
            case typename = "__typename"
        }
    }

    enum ID: String, Codable {
        case movie = "movie"
    }

    enum Text: String, Codable {
        case movie = "Movie"
    }

    enum TitleTypeTypename: String, Codable {
        case titleType = "TitleType"
    }

    // MARK: - Encode/decode helpers

    class JSONNull: Codable, Hashable {

        public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
            return true
        }

        public var hashValue: Int {
            return 0
        }

        public init() {}

        public required init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if !container.decodeNil() {
                throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            try container.encodeNil()
        }
    }

}
