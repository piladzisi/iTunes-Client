//
//  ViewController.swift
//  iTunesClient
//
//  Created by anna.sibirtseva on 25/04/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
     let searchEndpoint = Itunes.search(term: "taylor swift", media: .music(entity: .musicArtist, attribute: .artistTerm))
        print(searchEndpoint.request)
     
     let lookupEndpoint = Itunes.lookup(id: 159260351, entity: MusicEntity.album)
        print(lookupEndpoint.request)
        
   }

}
