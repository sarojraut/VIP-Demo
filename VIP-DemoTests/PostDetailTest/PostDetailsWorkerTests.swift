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
    
    sut.fetchPosts { (response, error) in
        
    }
  }
}
