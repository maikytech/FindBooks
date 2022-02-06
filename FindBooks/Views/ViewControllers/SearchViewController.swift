//
//  SearchViewController.swift
//  FindBooks
//
//  Created by Maiqui Cedeño on 6/02/22.
//

import UIKit

final class SearchViewController: UIViewController {
    
    private lazy var searchView: SearchView = {
        let view = SearchView()
        return view
    }()
    
    override func loadView() {
        view = searchView
    }
}
