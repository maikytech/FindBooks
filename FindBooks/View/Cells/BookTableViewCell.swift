//
//  BookTableViewCell.swift
//  FindBooks
//
//  Created by Maiqui Cedeño on 6/02/22.
//

import Foundation
import UIKit

final class BookTableViewCell: GenericTableViewCell<Book> {
    
    //MARK: - Variables
    lazy var titleBookLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private Methods
    private func setupView() {
        setTitleBookLabelConstraints()
    }
    
    private func setTitleBookLabelConstraints() {
        contentView.addSubview(titleBookLabel)
        NSLayoutConstraint.activate([
            titleBookLabel.topAnchor.constraint(equalTo: topAnchor),
            titleBookLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleBookLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
            
        ])
    }
    
    override func setupData(_ data: Book) {
        titleBookLabel.text = data.title
    }
}
