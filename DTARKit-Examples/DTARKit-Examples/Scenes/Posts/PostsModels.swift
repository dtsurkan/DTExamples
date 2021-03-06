//
//  PostsModels.swift
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
import IGListKit
import RxSwift
import RxCocoa

enum Posts {
  // MARK: Use cases
  
    enum FetchPosts {
        
        struct Request { }
        
        struct Response {
             var posts: [Post]
        }
        
        struct ViewModel {
            class DisplayedPost: ListDiffable {
                var username: String = ""
                var comments: [String] = []
                var photoURL: String = ""
                
                // MARK: - Init
                
                init(username: String, comments: [String], photoURL: String) {
                    self.username = username
                    self.comments = comments
                    self.photoURL = photoURL
                }
                
                // MARK: - ListDiffable
                
                func diffIdentifier() -> NSObjectProtocol {
                    return username as NSObjectProtocol
                }
                
                func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
                    guard self !== object else { return true }
                    guard let object = object as? DisplayedPost else { return false }
                    return comments == object.comments && photoURL == object.photoURL
                }
                
            }
            
            var displayedPosts: [DisplayedPost]
        }
    }
}
