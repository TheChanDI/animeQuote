//
//  QuoteListPresenter.swift
//  animeQuote
//
//  Created by ENFINY INNOVATIONS on 9/16/21.
//

import UIKit

class QuoteListPresenter {
    
    weak var delegate: QuoteListProtocol?
    
    func callApi() {
        QuoteListManager.apiCall { [weak self] response in
            self?.delegate?.presentData(with: response)
        }
    }
    
    typealias presenterDelegate = QuoteListProtocol & UIViewController
    func setDelegate(with delegate: presenterDelegate) {
        self.delegate = delegate
    }
    
}

