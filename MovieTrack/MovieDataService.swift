//
//  MovieDataService.swift
//  MovieTrack
//
//  Created by Aaron Wilson on 5/9/23.
//

import Foundation
import Combine

class MovieDataService: ObservableObject {
    @Published var allMovies: [TitleModel] = []
    @Published var searchText: String = ""
    @Published var actor: [ActorModel] = []
    @Published var searchRan: Bool = false
    @Published var browseChoice: browseBy = .popular
    @Published var searchChoice: searchBy = .title
    
    var movieSubscription = Set<AnyCancellable>()
    
    init() {
       // getMovies()
    }
    enum searchBy {
    case person, title
    }
    
    func search() {
        switch searchChoice {
        case .person:
            guard let actorURL = URL(string:"https://api.themoviedb.org/3/search/person?query=\(searchText.lowercased().formatForURL())&include_adult=false&language=en-US&page=1&api_key=1191b787fb02a237352fe95e2f81b6e6") else {
                print("bad url my guy")
                return}
            
                NetworkingManager.download(url: actorURL)
                .decode(type: ActorQuery.self, decoder: JSONDecoder())
                .receive(on: DispatchQueue.main)
                .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedActors) in
                    print(returnedActors)
                    self?.actor.append(contentsOf: returnedActors.results)
                })
                .store(in: &movieSubscription)
        case .title:
            guard let url = URL(string: "https://api.themoviedb.org/3/search/movie?api_key=1191b787fb02a237352fe95e2f81b6e6&query=\(searchText.lowercased().formatForURL())") else {
                print("bad url my guy")
                return}
            
                NetworkingManager.download(url: url)
                .decode(type: Query.self, decoder: JSONDecoder())
                .receive(on: DispatchQueue.main)
                .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedMovies) in
                    print(returnedMovies)
                    self?.allMovies.append(contentsOf: returnedMovies.results)
                })
                .store(in: &movieSubscription)
        }
    }
    
    func assignGender(actor: ActorModel) -> String {
        if actor.gender == 1 {
            return "female"
        } else {
            return "male"
        }
    }
    
    enum browseBy {
        case upcoming, popular, inTheaters
    }
    
     func browseMovies() {
         
         switch browseChoice {
         case .popular:
             guard let url = URL(string: "https://api.themoviedb.org/3/movie/top_rated?language=en-US&page=1&api_key=1191b787fb02a237352fe95e2f81b6e6") else {return}
             
                NetworkingManager.download(url: url)
                 .decode(type: Query.self, decoder: JSONDecoder())
                 .receive(on: DispatchQueue.main)
                 .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedMovies) in
                     self?.allMovies.append(contentsOf: returnedMovies.results)
                 })
                 .store(in: &movieSubscription)
             
             guard let url = URL(string: "https://api.themoviedb.org/3/movie/top_rated?language=en-US&page=2&api_key=1191b787fb02a237352fe95e2f81b6e6") else {return}
             
                 NetworkingManager.download(url: url)
                 .decode(type: Query.self, decoder: JSONDecoder())
                 .receive(on: DispatchQueue.main)
                 .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedMovies) in
                     self?.allMovies.append(contentsOf: returnedMovies.results)
                 })
                 .store(in: &movieSubscription)
            
             guard let url = URL(string: "https://api.themoviedb.org/3/movie/top_rated?language=en-US&page=3&api_key=1191b787fb02a237352fe95e2f81b6e6") else {return}
             
                 NetworkingManager.download(url: url)
                 .decode(type: Query.self, decoder: JSONDecoder())
                 .receive(on: DispatchQueue.main)
                 .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedMovies) in
                     self?.allMovies.append(contentsOf: returnedMovies.results)
                 })
                 .store(in: &movieSubscription)
         case .upcoming:
             guard let url = URL(string: "https://api.themoviedb.org/3/movie/upcoming?language=en-US&page=1&api_key=1191b787fb02a237352fe95e2f81b6e6") else {return}
             
                 NetworkingManager.download(url: url)
                 .decode(type: Query.self, decoder: JSONDecoder())
                 .receive(on: DispatchQueue.main)
                 .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedMovies) in
                     self?.allMovies.append(contentsOf: returnedMovies.results)
                 })
                 .store(in: &movieSubscription)
             
             guard let url = URL(string: "https://api.themoviedb.org/3/movie/upcoming?language=en-US&page=2&api_key=1191b787fb02a237352fe95e2f81b6e6") else {return}
             
                 NetworkingManager.download(url: url)
                 .decode(type: Query.self, decoder: JSONDecoder())
                 .receive(on: DispatchQueue.main)
                 .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedMovies) in
                     self?.allMovies.append(contentsOf: returnedMovies.results)
                 })
                 .store(in: &movieSubscription)
             
         case .inTheaters:
             guard let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?language=en-US&page=1&api_key=1191b787fb02a237352fe95e2f81b6e6") else {return}
             
                 NetworkingManager.download(url: url)
                 .decode(type: Query.self, decoder: JSONDecoder())
                 .receive(on: DispatchQueue.main)
                 .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedMovies) in
                     self?.allMovies.append(contentsOf: returnedMovies.results)
                 })
                 .store(in: &movieSubscription)
         }
        }
}
