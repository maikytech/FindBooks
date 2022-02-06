//
//  NetworkingProvider.swift
//  FindBooks
//
//  Created by Maiqui Cedeño on 5/02/22.
//

import Foundation

final class NetworkingProvider {
    
    //MARK: - Variables
    static let share = NetworkingProvider()
    
    //MARK: - Private Methods
    private func getLibrary(technology: String) {
        let url = "\(EndPoints.domain)\(EndPoints.search)\(technology)"
        guard let objectUrl = URL(string: url) else {
            print("url error")
            return
        }
        
        URLSession.shared.dataTask(with: objectUrl) { data, response, error in
            guard let data = data else {
                print(error.debugDescription)
                return
            }
            
            do {
                let decoder = try JSONDecoder().decode(Library.self, from: data)
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
