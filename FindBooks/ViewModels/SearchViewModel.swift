//
//  SearchViewModel.swift
//  FindBooks
//
//  Created by Maiqui Cedeño on 5/02/22.
//

import Foundation

final class SearchViewModel {
    
    //MARK: - Variables
    private var refreshData = {
        () -> () in
    }
    
    var dataArray: [Library] = [] {
        didSet {
            refreshData()
        }
    }
    
    
    func getLibrary(technology: String) {
        NetworkingProvider.shared.fetchData(technology: technology) {(library) in
            self.dataArray.append(library)
            print(self.dataArray)
    
        } failure: { error in
            print(error.localizedDescription)
        }
    }
}
