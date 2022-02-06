//
//  Library.swift
//  FindBooks
//
//  Created by Maiqui Cedeño on 5/02/22.
//

import Foundation

struct Library: Codable {
    let error: String
    let total: String
    let page: String
    let books: [Book]
}
