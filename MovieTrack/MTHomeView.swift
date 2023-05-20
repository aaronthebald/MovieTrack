//
//  MTHomeView.swift
//  MovieTrack
//
//  Created by Aaron Wilson on 5/9/23.
//

import SwiftUI

struct MTHomeView: View {
    
    @StateObject var vm: MovieDataService = MovieDataService()
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView {
            VStack {
                TextField("Search...", text: $textFieldText)
                HStack {
                    Menu("Search by..") {
                        Button {
                            vm.searchChoice = .person
                        } label: {
                            Text("Person")
                        }
                        Button {
                            vm.searchChoice = .title
                        } label: {
                            Text("Title")
                        }
                    }
                    Spacer()
                    Button {
                        print(textFieldText)
                        vm.searchText = textFieldText
                        print(vm.searchText)
                        vm.searchRan = true
                        vm.allMovies.removeAll()
                        vm.search()
                    } label: {
                        Text("Search")
                            .buttonStyle(.borderedProminent)
                    }
                }
                .padding(.horizontal)
                HStack {
                    Button {
                        vm.searchRan = false
                        vm.allMovies.removeAll()
                        vm.browseChoice = .popular
                        vm.browseMovies()
                    } label: {
                        Text("Popular")
                    }.buttonStyle(.borderedProminent)
                    Button {
                        vm.searchRan = false
                        vm.allMovies.removeAll()
                        vm.browseChoice = .upcoming
                        vm.browseMovies()
                    } label: {
                        Text("Upcoming")
                    }.buttonStyle(.borderedProminent)
                    Button {
                        vm.searchRan = false
                        vm.allMovies.removeAll()
                        vm.browseChoice = .inTheaters
                        vm.browseMovies()
                    } label: {
                        Text("Now playing")
                    }.buttonStyle(.borderedProminent)
                    

                }
                
                if vm.searchRan {
                    ForEach(vm.actor) { proformer in
                        Text(proformer.name)
                        Text(vm.assignGender(actor: proformer))
                        Text(proformer.knownFor.first?.title ?? "")
                    }
                    ForEach(vm.allMovies) { title in
                        Text(title.title ?? "")
                    }
                } else {
                    ForEach(vm.allMovies) { movies in
                        Text(movies.title ?? "")
                    }
                }

                
            }
        }
        .onAppear {
            vm.browseMovies()
        }
    }
}

struct MTHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MTHomeView()
    }
}
