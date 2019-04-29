//
//  PendingOperations.swift
//  iTunesClient
//
//  Created by anna.sibirtseva on 29/04/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import Foundation

class PendingOperations {
    var downloadsInProgress = [IndexPath: Operation] ()
    
    let downloadQueue = OperationQueue()
}
