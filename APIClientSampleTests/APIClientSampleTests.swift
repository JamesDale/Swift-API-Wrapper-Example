//
//  APIClientSampleTests.swift
//  APIClientSampleTests
//
//  Created by James Dale on 17/6/20.
//  Copyright © 2020 James Dale. All rights reserved.
//

import XCTest
import APIClientSample

class APIClientSampleTests: XCTestCase {
    
    func testExample() throws {
        let expectation = XCTestExpectation(description: "API Data is returned")
        
        let request = GetTodo()
        let api = APIClient.shared
        
        api.send(request) { (result) in
            switch result {
            case .success(let todo):
                print(todo)
                print(todo.title)
                expectation.fulfill()
            case .failure(let error):
                print(error.localizedDescription)
                XCTFail(error.localizedDescription)
            }
        }
        
        wait(for: [expectation], timeout: 10)
    }

}
