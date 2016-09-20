//
//  Book.swift
//  BookManager
//
//  Created by 윤 지우 on 2016. 9. 19..
//  Copyright © 2016년 YOONJEEWOO. All rights reserved.
//

import Foundation

class Book {
    var name = ""
    var genre = ""
    var author = ""
    
    func bookPrint() {
        print("Name : \(name)")
        print("Genre : \(genre)")
        print("Author : \(author)")
    }
}