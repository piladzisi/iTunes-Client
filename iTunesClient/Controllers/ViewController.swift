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
        
        let endpoint = Itunes.search(term: "taylor swift", media: .music)
        print(endpoint.request)
    }


}

