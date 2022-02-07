//
//  SearchView.swift
//  FindBooks
//
//  Created by Maiqui Cedeño on 6/02/22.
//

import Foundation
import UIKit

final class SearchView: UIView {
    
    //MARK: - Variables
    let cellID: String = "searchBookCell"
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        return view
    }()
    
    private lazy var booksSearchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    private lazy var booksTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(BookTableViewCell.self, forCellReuseIdentifier: cellID)
        tableView.backgroundColor = .red
        tableView.rowHeight = UITableView.automaticDimension
        return tableView
    }()
    
    private lazy var dataSource: DataSource = {
        DataSource<Book, BookTableViewCell>(identifier: cellID)
    }()
    
    
    //MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
        setupView()
        setupTableView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private Methods
    private func setupView() {
        addSubview(containerView)
        setContainerViewConstraints()
        setBooksSearchBarContraints()
        setBooksTableViewConstraints()
    }
    
    private func setupTableView() {
        booksTableView.dataSource  = dataSource
        dataSource.set(data: fillData())
        
    }
    
    private func setContainerViewConstraints() {
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    private func setBooksSearchBarContraints() {
        addSubview(booksSearchBar)
        NSLayoutConstraint.activate([
            booksSearchBar.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 200),
            booksSearchBar.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            booksSearchBar.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            booksSearchBar.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
    
    private func setBooksTableViewConstraints() {
        addSubview(booksTableView)
        NSLayoutConstraint.activate([
            booksTableView.topAnchor.constraint(equalTo: booksSearchBar.bottomAnchor, constant: 50),
            booksTableView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            booksTableView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            booksTableView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -200)
        ])
        
    }
    
    private func fillData() -> [Book] {
        [
            Book(title: "Este es el titulo del libro"),
            Book(title: "Este es otro libro")
        ]
    }
}
