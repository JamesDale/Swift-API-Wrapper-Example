//
//  TodoResponse.swift
//  APIClientSample
//
//  Created by James Dale on 17/6/20.
//  Copyright © 2020 James Dale. All rights reserved.
//

import Foundation

public struct Todo: Codable {
    public let userId: Int
    public let id: Int
    public let title: String
    public let completed: Bool
}
