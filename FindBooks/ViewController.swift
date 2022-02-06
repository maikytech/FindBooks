//
//  ViewController.swift
//  FindBooks
//
//  Created by Maiqui Cedeño on 5/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let technology: String = "ios"
    let searchViewModel = SearchViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchViewModel.getLibrary(technology: technology)
    }


}

