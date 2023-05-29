//
//  ActorDataService.swift
//  MovieTrack
//
//  Created by Aaron Wilson on 5/12/23.
//

import Foundation

class ActorDataService {
    
    @Published var Actor: ActorModel
    
    init(Actor: ActorModel) {
        self.Actor = Actor
    }
    
    
}
