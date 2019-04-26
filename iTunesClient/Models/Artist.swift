//
//  Artist.swift
//  iTunesClient
//
//  Created by anna.sibirtseva on 25/04/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import Foundation

class Artist {
    let id: Int
    let name: String
    let primaryGenre: Genre
    var albums: [Album]
    
    init(id: Int, name: String, primaryGenre: Genre, albums: [Album]) {
        self.id = id
        self.name = name
        self.primaryGenre = primaryGenre
        self.albums = albums
    }
}
