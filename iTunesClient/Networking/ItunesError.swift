//
//  ItunesError.swift
//  iTunesClient
//
//  Created by anna.sibirtseva on 27/04/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import Foundation

enum ItunesError: Error {
    case requestFailed
    case responseUnsuccessful
    case invalidData
    case jsonConversionFailure
}
