//
//  SecondViewController.swift
//  WebServices
//
//  Created by Kevin on 13/10/16.
//  Copyright © 2016 Kevin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var requestButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendRequest(_ sender: AnyObject) {
        HttpClient().get(url: "http://jsonplaceholder.typicode.com/posts/1") { (data: Data?, urlResponse: URLResponse?, error: Error?) in
            let map = JsonDecoder().mapFromData(withData: data!)
            let datoEntity: DatoEntity = DatoEntity()
            datoEntity.populateEntity(map: map)
            
            print(datoEntity.title!)
        }
    }
}
