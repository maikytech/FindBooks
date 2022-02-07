//
//  DataSource.swift
//  FindBooks
//
//  Created by Maiqui Cedeño on 6/02/22.
//

import Foundation
import UIKit

final class DataSource<Data, Cell: GenericTableViewCell<Data>>: NSObject, UITableViewDataSource {
    
    private var data: [Data] = []
    private var identifier: String
    
    init(identifier: String) {
        self.identifier = identifier
    }
    
    func set(data: [Data]) {
        self.data = data
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? Cell else {
            fatalError()
        }
        cell.setupData(data[indexPath.row])
        return cell
    }
}
