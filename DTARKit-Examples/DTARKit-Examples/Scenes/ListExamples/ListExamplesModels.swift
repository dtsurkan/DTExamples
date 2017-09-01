//
//  ListExamplesModels.swift
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

enum ListExamples {
  // MARK: Use cases
  
  enum FetchExamples {
    
    struct Request {
    }
    
    struct Response {
        var examples: [Example]
    }
    
    struct ViewModel {
       
        class DisplayedExample: ListDiffable {
            var id: Int = 0
            var name: String = ""
            
            // MARK: - Init
            
            init(id: Int, name: String) {
                self.id = id
                self.name = name
            }
            
            // MARK: - ListDiffable
            
            func diffIdentifier() -> NSObjectProtocol {
                return id as NSObjectProtocol
            }
            
            func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
                guard self !== object else { return true }
                guard let object = object as? DisplayedExample else { return false }
                return name == object.name
            }
            
        }
        
        var displayedExamples: [DisplayedExample]
    }
  }
}



