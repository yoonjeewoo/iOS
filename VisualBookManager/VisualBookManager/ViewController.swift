//
//  ViewController.swift
//  VisualBookManager
//
//  Created by 윤 지우 on 2016. 9. 19..
//  Copyright © 2016년 YOONJEEWOO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myBook = BookManager()
    @IBOutlet var outputTextView : UITextView!
    
    @IBOutlet var countLabel : UILabel!
    
    @IBOutlet var nameTextField : UITextField!
    @IBOutlet var genreTextField : UITextField!
    @IBOutlet var authorTextField : UITextField!
    
    @IBAction func showAllAction(sender : AnyObject) {
        outputTextView.text! = myBook.showAllBook()
    }
    
    @IBAction func addBookAction(sender : AnyObject) {
        let bookTemp = Book()
        bookTemp.name = nameTextField.text!
        bookTemp.genre = genreTextField.text!
        bookTemp.author = authorTextField.text!
        
        myBook.addBook(bookTemp)
        outputTextView.text = "\(nameTextField.text!) 도서가 추가되었습니다."
        countLabel.text = "\(myBook.countBook())"
    }
    
    @IBAction func findBookAction(sender : AnyObject) {
        let resultBook = myBook.findBook(nameTextField.text!)
        if resultBook != nil {
            outputTextView.text = resultBook
        }else {
            outputTextView.text = "찾으시는 책이 없습니다."
        }
        
    }
    
    @IBAction func removeBookAction(sender : AnyObject) {
        let deleteBook = myBook.removeBook(nameTextField.text!)
        if deleteBook == true {
            outputTextView.text = "찾으시는 도서가 지워졌습니다."
        }else {
            outputTextView.text = "지우려고 하시는 도서가 없습니다."
        }
        countLabel.text = "\(myBook.countBook())"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let book1 = Book()
        book1.name = "햄릿"
        book1.genre = "비극"
        book1.author = "셰익스피어"
        
        let book2 = Book()
        book2.name = "누구를 위하여 종을 울리나"
        book2.genre = "전쟁소설"
        book2.author = "해밍웨이"
        
        let book3 = Book()
        book3.name = "죄와벌"
        book3.genre = "사실주의"
        book3.author = "톨스토이"
        
        myBook.addBook(book1)
        myBook.addBook(book2)
        myBook.addBook(book3)
        
        countLabel.text = "\(myBook.countBook())"

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

