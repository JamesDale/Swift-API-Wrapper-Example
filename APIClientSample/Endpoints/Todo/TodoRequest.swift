//
//  TodoRequest.swift
//  APIClientSample
//
//  Created by James Dale on 17/6/20.
//  Copyright © 2020 James Dale. All rights reserved.
//

import Foundation

public struct GetTodo: APIRequest {
    
    public typealias Response = Todo
    
    public let resource: String = "todos/1"
    
    public let body: Data? = nil
    
    public let method = "GET"
    
    public init() {}
}

