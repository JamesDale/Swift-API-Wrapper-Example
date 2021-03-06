//
//  APIError.swift
//  APIClientSample
//
//  Created by James Dale on 17/6/20.
//  Copyright © 2020 James Dale. All rights reserved.
//

import Foundation

public enum APIError: Error {
    
    case invalidEndpoint
    case unknown
    case noData
    
    var localizedDescription: String {
        switch self {
        case .invalidEndpoint:
            return "Unable to create network request"
        case .noData:
            return "No data was retrieved"
        default:
            return "Unknown Error"
        }
    }
    
}

