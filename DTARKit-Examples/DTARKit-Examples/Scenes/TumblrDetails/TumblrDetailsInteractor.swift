//
//  TumblrDetailsInteractor.swift
//  DTARKit-Examples
//
//  Created by Dima Tsurkan on 9/15/17.
//  Copyright (c) 2017 Dima Tsurkan. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol TumblrDetailsBusinessLogic {
    func doSomething(request: TumblrDetails.Something.Request)
}

protocol TumblrDetailsDataStore {
    //var name: String { get set }
}

class TumblrDetailsInteractor: TumblrDetailsBusinessLogic, TumblrDetailsDataStore {
    var presenter: TumblrDetailsPresentationLogic?
    var worker: TumblrDetailsWorker?
    //var name: String = ""
  
    // MARK: Do something
  
    func doSomething(request: TumblrDetails.Something.Request) {
        worker = TumblrDetailsWorker()
        worker?.doSomeWork()
    
        let response = TumblrDetails.Something.Response()
        presenter?.presentSomething(response: response)
    }
}