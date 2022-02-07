//
//  SearchViewModel.swift
//  FindBooks
//
//  Created by Maiqui Cedeño on 5/02/22.
//

import Foundation

final class SearchViewModel {
    
    //MARK: - Variables
    var refreshData = {
        () -> () in
    }
    
    var dataSource: [Library] = [] {
        didSet {
            refreshData()
        }
    }
    
    
    func getLibrary(technology: String) {
//        NetworkingProvider.shared.fetchData(technology: technology) {(library) in
//            self.dataSource.append(library)
//            
//    
//        } failure: { error in
//            print(error.localizedDescription)
//        }
    }
}
