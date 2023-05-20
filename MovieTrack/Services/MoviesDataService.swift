//
//  Movies.swift
//  MovieTrack
//
//  Created by Aaron Wilson on 5/9/23.
//

import Foundation

class MoviesDataService {

     func getMovieData() -> Data {
         let data = {
      
        
          "id": "tt0111161",
          "primaryImage": {
            "id": "rm10105600",
            "width": 674,
            "height": 1000,
            "url": "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg",
            "caption": {
              "plainText": "Morgan Freeman, Tim Robbins, Clancy Brown, Mark Rolston, Gil Bellows, William Sadler, Bob Gunton, Brian Libby, and James Whitmore in The Shawshank Redemption (1994)",
              "__typename": "Markdown"
            },
            "__typename": "Image"
          },
          "titleType": {
            "text": "Movie",
            "id": "movie",
            "isSeries": false,
            "isEpisode": false,
            "__typename": "TitleType"
          },
          "titleText": {
            "text": "The Shawshank Redemption",
            "__typename": "TitleText"
          },
          "releaseYear": {
            "year": 1994,
            "endYear": null,
            "__typename": "YearRange"
          },
          "releaseDate": {
            "day": 2,
            "month": 3,
            "year": 1995,
            "__typename": "ReleaseDate"
          },
          "position": 1
        },
        {
          "id": "tt0068646",
          "primaryImage": {
            "id": "rm746868224",
            "width": 1396,
            "height": 1982,
            "url": "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg",
            "caption": {
              "plainText": "Marlon Brando in The Godfather (1972)",
              "__typename": "Markdown"
            },
            "__typename": "Image"
          },
          "titleType": {
            "text": "Movie",
            "id": "movie",
            "isSeries": false,
            "isEpisode": false,
            "__typename": "TitleType"
          },
          "titleText": {
            "text": "The Godfather",
            "__typename": "TitleText"
          },
          "releaseYear": {
            "year": 1972,
            "endYear": null,
            "__typename": "YearRange"
          },
          "releaseDate": {
            "day": 28,
            "month": 9,
            "year": 1972,
            "__typename": "ReleaseDate"
          },
          "position": 2
        },
        {
          "id": "tt0468569",
          "primaryImage": {
            "id": "rm4023877632",
            "width": 1383,
            "height": 2048,
            "url": "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg",
            "caption": {
              "plainText": "Morgan Freeman, Gary Oldman, Christian Bale, Michael Caine, Aaron Eckhart, Heath Ledger, Maggie Gyllenhaal, Cillian Murphy, and Chin Han in The Dark Knight (2008)",
              "__typename": "Markdown"
            },
            "__typename": "Image"
          },
          "titleType": {
            "text": "Movie",
            "id": "movie",
            "isSeries": false,
            "isEpisode": false,
            "__typename": "TitleType"
          },
          "titleText": {
            "text": "The Dark Knight",
            "__typename": "TitleText"
          },
          "releaseYear": {
            "year": 2008,
            "endYear": null,
            "__typename": "YearRange"
          },
          "releaseDate": {
            "day": 24,
            "month": 7,
            "year": 2008,
            "__typename": "ReleaseDate"
          },
          "position": 3
        },
        {
          "id": "tt0071562",
          "primaryImage": {
            "id": "rm4159262464",
            "width": 1791,
            "height": 2552,
            "url": "https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg",
            "caption": {
              "plainText": "Al Pacino in The Godfather: Part II (1974)",
              "__typename": "Markdown"
            },
            "__typename": "Image"
          },
          "titleType": {
            "text": "Movie",
            "id": "movie",
            "isSeries": false,
            "isEpisode": false,
            "__typename": "TitleType"
          },
          "titleText": {
            "text": "The Godfather: Part II",
            "__typename": "TitleText"
          },
          "releaseYear": {
            "year": 1974,
            "endYear": null,
            "__typename": "YearRange"
          },
          "releaseDate": {
            "day": 17,
            "month": 7,
            "year": 1975,
            "__typename": "ReleaseDate"
          },
          "position": 4
        },
        {
          "id": "tt0050083",
          "primaryImage": {
            "id": "rm2927108352",
            "width": 974,
            "height": 1500,
            "url": "https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg",
            "caption": {
              "plainText": "Henry Fonda, Martin Balsam, Jack Klugman, Lee J. Cobb, Ed Begley, Edward Binns, John Fiedler, E.G. Marshall, Joseph Sweeney, George Voskovec, Jack Warden, and Robert Webber in 12 Angry Men (1957)",
              "__typename": "Markdown"
            },
            "__typename": "Image"
          },
          "titleType": {
            "text": "Movie",
            "id": "movie",
            "isSeries": false,
            "isEpisode": false,
            "__typename": "TitleType"
          },
          "titleText": {
            "text": "De 12 gezworenen",
            "__typename": "TitleText"
          },
          "releaseYear": {
            "year": 1957,
            "endYear": null,
            "__typename": "YearRange"
          },
          "releaseDate": {
            "day": 25,
            "month": 10,
            "year": 1957,
            "__typename": "ReleaseDate"
          },
          "position": 5
        },
        {
          "id": "tt0108052",
          "primaryImage": {
            "id": "rm1610023168",
            "width": 1600,
            "height": 2400,
            "url": "https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg",
            "caption": {
              "plainText": "Schindler's List (1993)",
              "__typename": "Markdown"
            },
            "__typename": "Image"
          },
          "titleType": {
            "text": "Movie",
            "id": "movie",
            "isSeries": false,
            "isEpisode": false,
            "__typename": "TitleType"
          },
          "titleText": {
            "text": "Schindler's List",
            "__typename": "TitleText"
          },
          "releaseYear": {
            "year": 1993,
            "endYear": null,
            "__typename": "YearRange"
          },
          "releaseDate": {
            "day": 3,
            "month": 3,
            "year": 1994,
            "__typename": "ReleaseDate"
          },
          "position": 6
        },
        {
          "id": "tt0167260",
          "primaryImage": {
            "id": "rm584928512",
            "width": 800,
            "height": 1185,
            "url": "https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg",
            "caption": {
              "plainText": "Liv Tyler, Sean Astin, Elijah Wood, Viggo Mortensen, Ian McKellen, and Andy Serkis in The Lord of the Rings: The Return of the King (2003)",
              "__typename": "Markdown"
            },
            "__typename": "Image"
          },
          "titleType": {
            "text": "Movie",
            "id": "movie",
            "isSeries": false,
            "isEpisode": false,
            "__typename": "TitleType"
          },
          "titleText": {
            "text": "The Lord of the Rings: The Return of the King",
            "__typename": "TitleText"
          },
          "releaseYear": {
            "year": 2003,
            "endYear": null,
            "__typename": "YearRange"
          },
          "releaseDate": {
            "day": 17,
            "month": 12,
            "year": 2003,
            "__typename": "ReleaseDate"
          },
          "position": 7
        },
        {
          "id": "tt0110912",
          "primaryImage": {
            "id": "rm1959546112",
            "width": 1055,
            "height": 1536,
            "url": "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg",
            "caption": {
              "plainText": "Uma Thurman in Pulp Fiction (1994)",
              "__typename": "Markdown"
            },
            "__typename": "Image"
          },
          "titleType": {
            "text": "Movie",
            "id": "movie",
            "isSeries": false,
            "isEpisode": false,
            "__typename": "TitleType"
          },
          "titleText": {
            "text": "Pulp Fiction",
            "__typename": "TitleText"
          },
          "releaseYear": {
            "year": 1994,
            "endYear": null,
            "__typename": "YearRange"
          },
          "releaseDate": {
            "day": 1,
            "month": 12,
            "year": 1994,
            "__typename": "ReleaseDate"
          },
          "position": 8
        },
        {
          "id": "tt0120737",
          "primaryImage": {
            "id": "rm3592958976",
            "width": 1978,
            "height": 2936,
            "url": "https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg",
            "caption": {
              "plainText": "Liv Tyler, Sean Astin, Sean Bean, Elijah Wood, Cate Blanchett, Viggo Mortensen, Ian McKellen, Orlando Bloom, Billy Boyd, Dominic Monaghan, and John Rhys-Davies in The Lord of the Rings: The Fellowship of the Ring (2001)",
              "__typename": "Markdown"
            },
            "__typename": "Image"
          },
          "titleType": {
            "text": "Movie",
            "id": "movie",
            "isSeries": false,
            "isEpisode": false,
            "__typename": "TitleType"
          },
          "titleText": {
            "text": "The Lord of the Rings: The Fellowship of the Ring",
            "__typename": "TitleText"
          },
          "releaseYear": {
            "year": 2001,
            "endYear": null,
            "__typename": "YearRange"
          },
          "releaseDate": {
            "day": 19,
            "month": 12,
            "year": 2001,
            "__typename": "ReleaseDate"
          },
          "position": 9
        },
        {
          "id": "tt0109830",
          "primaryImage": {
            "id": "rm1954748672",
            "width": 558,
            "height": 809,
            "url": "https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg",
            "caption": {
              "plainText": "Tom Hanks in Forrest Gump (1994)",
              "__typename": "Markdown"
            },
            "__typename": "Image"
          },
          "titleType": {
            "text": "Movie",
            "id": "movie",
            "isSeries": false,
            "isEpisode": false,
            "__typename": "TitleType"
          },
          "titleText": {
            "text": "Forrest Gump",
            "__typename": "TitleText"
          },
          "releaseYear": {
            "year": 1994,
            "endYear": null,
            "__typename": "YearRange"
          },
          "releaseDate": {
            "day": 22,
            "month": 9,
            "year": 1994,
            "__typename": "ReleaseDate"
          },
          "position": 10
        }
        return data
        }
        
    }

