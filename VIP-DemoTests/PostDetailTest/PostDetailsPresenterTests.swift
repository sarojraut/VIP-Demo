//
//  PostDetailsPresenterTests.swift
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

class PostDetailsPresenterTests: XCTestCase
{
  // MARK: Subject under test
  
  var sut: PostDetailsPresenter!
  
  // MARK: Test lifecycle
  
  override func setUp()
  {
    super.setUp()
    setupPostDetailsPresenter()
  }
  
  override func tearDown()
  {
    super.tearDown()
  }
  
  // MARK: Test setup
  
  func setupPostDetailsPresenter()
  {
    sut = PostDetailsPresenter()
  }
  
  // MARK: Test doubles
  
  class PostDetailsDisplayLogicSpy: PostDetailsDisplayLogic
  {
    var displaySomethingCalled = false
    
    func displayPosts()
    {
      displaySomethingCalled = true
    }
  }
  
  // MARK: Tests
  
  func testPresentPosts()
  {
    // Given
    let spy = PostDetailsDisplayLogicSpy()
    sut.viewController = spy
    let response = PostDetails.Post.Response()
    
    // When
    sut.presentPosts()
    
    // Then
    XCTAssertTrue(spy.displaySomethingCalled, "presentSomething(response:) should ask the view controller to display the result")
  }
}
