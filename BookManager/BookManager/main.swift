//
//  main.swift
//  BookManager
//
//  Created by 윤 지우 on 2016. 9. 19..
//  Copyright © 2016년 YOONJEEWOO. All rights reserved.
//

import Foundation

var book1 = Book()
book1.name = "햄릿"
book1.genre = "비극"
book1.author = "셰익스피어"

var book2 = Book()
book2.name = "누구를 위하여 종을 울리나"
book2.genre = "전쟁소설"
book2.author = "해밍웨이"

var book3 = Book()
book3.name = "죄와벌"
book3.genre = "사실주의"
book3.author = "톨스토이"

var myBook = BookManager()

myBook.addBook(book1)
myBook.addBook(book2)
myBook.addBook(book3)

print(myBook.showAllBook())
print(myBook.countBook())

var findResult = myBook.findBook("죄와벌")

if findResult != nil {
    print("\(findResult!)를 찾았습니다.")
}else {
    print("찾으시는 책이 없는데요..^^;")
}

myBook.removeBook("죄와벌")
print(myBook.showAllBook())