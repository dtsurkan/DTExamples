//
//  ListExamplesPresenter.swift
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

protocol ListExamplesPresentationLogic {
    func presentFetchedOrders(response: ListExamples.FetchExamples.Response)
}

class ListExamplesPresenter: ListExamplesPresentationLogic  {
    weak var viewController: ListExamplesDisplayLogic?
  
    // MARK: Fetch examples
  
    func presentFetchedOrders(response: ListExamples.FetchExamples.Response) {
        var displayedExamples: [ListExamples.FetchExamples.ViewModel.DisplayedExample] = []
        for example in response.examples {
            let displayedExample = ListExamples.FetchExamples.ViewModel.DisplayedExample(id: example.id, name: example.name)
            displayedExamples.append(displayedExample)
        }
        let viewModel = ListExamples.FetchExamples.ViewModel(displayedExamples: displayedExamples)
        viewController?.displayFetchedExamples(viewModel: viewModel)
    }
}