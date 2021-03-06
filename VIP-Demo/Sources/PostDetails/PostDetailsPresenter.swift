//
//  PostDetailsInteractor.swift
//  VIP-Demo
//
//  Created by admin on 4/1/19.
//  Copyright (c) 2019 admin. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol PostDetailsPresentationLogic
{
    func presentPosts(response:[PostDetails.Post.Response])
}

class PostDetailsPresenter: PostDetailsPresentationLogic
{
    weak var viewController: PostDetailsDisplayLogic?
    
    // MARK: Do something
    
    func presentPosts(response:[PostDetails.Post.Response])
    {
        var posts: [PostFieldsViewModel] = []
        for value in response{
            let model = PostFieldsViewModel(userImageUrl: value.id?.description ?? "" , title: value.title ?? ""  , description: value.body ?? "" )
            posts.append(model)
        }
        viewController?.displayPosts(viewModel: posts)
    }
}
