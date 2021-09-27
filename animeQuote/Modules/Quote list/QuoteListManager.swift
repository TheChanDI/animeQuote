//
//  QuoteListManager.swift
//  animeQuote
//
//  Created by ENFINY INNOVATIONS on 9/16/21.
//

import Foundation

class QuoteListManager {
    
    static func apiCall(completion: @escaping(_ data: [AnimeModel]) -> Void) {
        let url = URLRequest(url: URL(string: "https://test.com")!)
        let task = URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            guard let data = data, error == nil else {return}
            print(data)
        })
        
        task.resume()
        
    }
    
}
