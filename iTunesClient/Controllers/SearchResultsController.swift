//
//  SearchResultsController.swift
//  iTunesClient
//
//  Created by anna.sibirtseva on 26/04/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import UIKit

class SearchResultsController: UITableViewController {

    let searchController = UISearchController(searchResultsController: nil)
    let dataSource = SearchResultsDataSource()
    let client = ItunesAPIClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(SearchResultsController.dismissSearchResultsController))
        
        tableView.tableHeaderView = searchController.searchBar
        searchController.dimsBackgroundDuringPresentation = false
        
        searchController.searchResultsUpdater = self
        
        tableView.dataSource = dataSource
        definesPresentationContext = true // this view controller is covered when presents another view controller.
    }

 
    @objc func dismissSearchResultsController() {
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARL: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showAlbums" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let artist = dataSource.artist(at: indexPath)
                artist.albums = Stub.albums
                
                let albumListController = segue.destination as! AlbumListController
                albumListController.artist = artist
            }
        }
    }
    
    
}

extension SearchResultsController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
       
        client.searchForArtists(withTerm: searchController.searchBar.text!) { [weak self] artists, error in
                self?.dataSource.update(with: artists)
                self?.tableView.reloadData()
        }
        
    }
}
