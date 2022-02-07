//
//  GenericTableViewCell.swift
//  FindBooks
//
//  Created by Maiqui Cedeño on 6/02/22.
//

import Foundation
import UIKit

class GenericTableViewCell<Data>: UITableViewCell {
    
    //Must be override
    func setupData(_ data: Data) {}
}
