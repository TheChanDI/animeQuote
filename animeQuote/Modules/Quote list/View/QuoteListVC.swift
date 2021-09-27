//
//  QuoteListVC.swift
//  animeQuote
//
//  Created by ENFINY INNOVATIONS on 9/16/21.
//

import UIKit

class QuoteListVC: UIViewController {

    
    // MARK: Properties
    
    let presenter = QuoteListPresenter()
    
    // MARK: VC's Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "List of Anime's Quote"
        
        presenter.setDelegate(with: self)
        presenter.callApi()
        
    }
    
}

extension QuoteListVC: QuoteListProtocol {
    func presentData(with data: [AnimeModel]) {
        print("Here is the data, \(data)")
    }
    
}
