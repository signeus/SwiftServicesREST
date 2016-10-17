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
        DatoService().get { (entity: [IEntity]) in
            let list: [DatoEntity] = entity as! [DatoEntity]
            for datoEntity in list{
                print(datoEntity.title)
            }
        }
        
    }
}
