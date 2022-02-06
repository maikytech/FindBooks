//
//  NetworkingProvider.swift
//  FindBooks
//
//  Created by Maiqui Cedeño on 5/02/22.
//

import Foundation

final class NetworkingProvider {
    
    //MARK: - Variables
    static let shared = NetworkingProvider()
    
    var viewModel = SearchViewModel()
    
    //MARK: - Methods
    func fetchData(technology: String) {
        let url = "\(EndPoints.domain)\(EndPoints.search)\(technology)"
        guard let objectUrl = URL(string: url) else {
            print("url error")
            return
        }
        
        URLSession.shared.dataTask(with: objectUrl) { data, response, error in
            guard let data = data else {
                print("error en el data \(error.debugDescription)")
                return
            }
            
            do {
                let decoder = try JSONDecoder().decode(Library.self, from: data)
                self.viewModel.dataArray.append(decoder)
                
            } catch let error {
                print("error en el do \(error.localizedDescription)")
            }
        }.resume()
    }
}
