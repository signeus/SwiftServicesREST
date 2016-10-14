//
//  ViewController.swift
//  WebServices
//
//  Created by Kevin on 13/10/16.
//  Copyright © 2016 Kevin. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendButtonTapped(_ sender: AnyObject) {
        HttpClient().get(url: "http://jsonplaceholder.typicode.com/comments/2") { (data: Data?, urlResponse: URLResponse?, error: Error?) in
            let map = JsonDecoder().mapFromData(withData: data!)
            let commentEntity: CommentEntity = CommentEntity()
            commentEntity.populateEntity(map: map)
            
            print(commentEntity.email!)
        }
    }
}

