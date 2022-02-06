//
//  SearchViewController.swift
//  FindBooks
//
//  Created by Maiqui Cedeño on 6/02/22.
//

import UIKit

final class SearchViewController: UIViewController {
    
    //MARK: - Variables
    private lazy var searchView: SearchView = {
        let view = SearchView()
        return view
    }()
    
    private var viewModel = SearchViewModel()
    
    override func loadView() {
        view = searchView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
    }
    
    //MARK: - Private Methods
    private func setupData() {
        viewModel.getLibrary(technology: "ios")
    }
    
    private func bind() {
        
    }
    

}
