//
//  ListExamplesWorker.swift
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

class ListExamplesWorker {
  
    func fetchExamples(completionHandler: @escaping ([Example]) -> Void) {
        var examples = [Example]()
        examples.append(Example(name: "Test ARKit #0", id: 0))
        examples.append(Example(name: "Test ARKit #1", id: 1))
        examples.append(Example(name: "Test ARKit #2", id: 2))
        completionHandler(examples)
    }
}