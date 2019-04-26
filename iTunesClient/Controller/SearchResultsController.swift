//
//  SearchResultsController.swift
//  iTunesClient
//
//  Created by anna.sibirtseva on 26/04/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import UIKit

class SearchResultsController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(SearchResultsController.dismissSearchResultsController))
    }

 
    @objc func dismissSearchResultsController() {
        self.dismiss(animated: true, completion: nil)
    }
}
