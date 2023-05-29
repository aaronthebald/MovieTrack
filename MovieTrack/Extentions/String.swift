//
//  String.swift
//  MovieTrack
//
//  Created by Aaron Wilson on 5/12/23.
//

extension String {
    
    
    func formatForURL() -> String {
        return self.replacingOccurrences(of: " ", with: "+", options: .regularExpression, range: nil)
    }
}
