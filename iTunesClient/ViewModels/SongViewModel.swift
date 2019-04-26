//
//  SongViewModel.swift
//  iTunesClient
//
//  Created by anna.sibirtseva on 26/04/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import Foundation

struct SongViewModel {
    let title: String
    let runtime: String
}
extension SongViewModel {
    init(song: Song) {
    self.title = song.censoredName
        
        //Track time in milliseconds
        let timeInSeconds = song.trackTime/1000
        let minutes = timeInSeconds/60 % 60
        let seconds = timeInSeconds % 60
        
        self.runtime = "\(minutes): \(seconds)"
    }
}
