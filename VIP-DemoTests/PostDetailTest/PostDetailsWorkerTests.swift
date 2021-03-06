//
//  PostDetailsWorkerTests.swift
//  VIP-Demo
//
//  Created by admin on 4/1/19.
//  Copyright (c) 2019 admin. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import VIP_Demo
import XCTest

class PostDetailsWorkerTests: XCTestCase
{
  // MARK: Subject under test
  
  var sut: PostDetailsWorker!
  
  // MARK: Test lifecycle
  
  override func setUp()
  {
    super.setUp()
    setupPostDetailsWorker()
  }
  
  override func tearDown()
  {
    super.tearDown()
  }
  
  // MARK: Test setup
  
  func setupPostDetailsWorker()
  {
    sut = PostDetailsWorker()
  }
  
  
  func testfetchPosts()
  {
    let expectations = expectation(description: "The Response result match the expected results")

    sut.fetchPosts { (response, error) in
         XCTAssertEqual(response?[0].userId, 1)
         expectations.fulfill()
    }
    
    waitForExpectations(timeout: 20, handler: { (error) in
        if let error = error {
            XCTAssertNil(error, "The api request does not fullfill the expectaion")
        }
    })
  }
}
