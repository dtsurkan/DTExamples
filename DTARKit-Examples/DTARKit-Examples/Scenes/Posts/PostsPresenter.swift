//
//  PostsPresenter.swift
//  DTARKit-Examples
//
//  Created by Dima Tsurkan on 8/25/17.
//  Copyright (c) 2017 Dima Tsurkan. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol PostsPresentationLogic{
    func presentFetchedPosts(response: Posts.FetchPosts.Response)
}

class PostsPresenter: PostsPresentationLogic {
    weak var viewController: PostsDisplayLogic?
  
    // MARK: Fetch posts
  
    func presentFetchedPosts(response: Posts.FetchPosts.Response) {
        var displayedPosts: [Posts.FetchPosts.ViewModel.DisplayedPost] = []
        for post in response.posts {
            let displayedPost = Posts.FetchPosts.ViewModel.DisplayedPost(username: post.username, comments: post.comments, photoURL: post.photoURL)
            displayedPosts.append(displayedPost)
        }
        let viewModel = Posts.FetchPosts.ViewModel(displayedPosts: displayedPosts)
        viewController?.displayFetchedPosts(viewModel: viewModel)
    }
}