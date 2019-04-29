//
//  AlbumDetailController.swift
//  iTunesClient
//
//  Created by anna.sibirtseva on 26/04/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import UIKit

class AlbumDetailController: UITableViewController {
    
    var album: Album? {
        didSet {
            if let album = album {
                configure(with: album)
                dataSource.update(with: album.songs)
                tableView.reloadData()
            }
        }
    }
    
    var dataSource = AlbumDetailDataSource(songs: [])
    
    @IBOutlet weak var arworkView: UIImageView!
    @IBOutlet weak var albumTitleLabel: UILabel!
    @IBOutlet weak var albumGenreLabel: UILabel!
    @IBOutlet weak var albumReleaseDate: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let album = album {
            configure(with: album)
        }
        tableView.dataSource = dataSource
     }
    
    func configure(with album: Album) {
        let viewModel = AlbumDetailViewModel(album: album)
        
        // Add implementation for artworkView
        albumTitleLabel.text = viewModel.title
        albumGenreLabel.text = viewModel.genre
        albumReleaseDate.text = viewModel.releaseDate
    }
   
}
