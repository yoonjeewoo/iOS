//
//  BookManager.swift
//  BookManager
//
//  Created by 윤 지우 on 2016. 9. 19..
//  Copyright © 2016년 YOONJEEWOO. All rights reserved.
//

import Foundation

class BookManager {
    var bookList = [Book]()
    
    func addBook(bookObject : Book) {
        bookList += [bookObject]
    }
    
    func showAllBook()->String {
        var strTemp = ""
        for bookTemp in bookList {
            strTemp += "Name : \(bookTemp.name)\n"
            strTemp += "Genre : \(bookTemp.genre)\n"
            strTemp += "Author : \(bookTemp.author)\n"
            strTemp += "------------------------------\n"
        }
        return strTemp
    }

    func countBook()->Int {
        return bookList.count
    }
    
    func findBook(name : String)->String? {
        var strTemp = ""
        for bookTemp in bookList {
            if bookTemp.name == name {
                strTemp += "Name : \(bookTemp.name)\n"
                strTemp += "Genre : \(bookTemp.genre)\n"
                strTemp += "Author : \(bookTemp.author)\n"
                strTemp += "------------------------------\n"
                return strTemp
            }
            
        }
        return nil
    }
    
    func removeBook(name : String) {
        for bookTemp in bookList {
            if bookTemp.name == name {
                let index = (bookList as NSArray).indexOfObject(bookTemp)
                bookList.removeAtIndex(index)
            }
        }
    }
}