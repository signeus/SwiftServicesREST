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
        CommentService().get(byId: 1) { (entity: IEntity) in
            let commentEntity: CommentEntity = entity as! CommentEntity
            print(commentEntity.email)
        }
        /*
        CommentService().get { (entity: [AnyObject]) in
            let list: [CommentEntity] = entity as! [CommentEntity]
            for commentEntity in list{
                print(commentEntity.email)
            }
        }
         */
    }
    @IBAction func showOtherScreenInOtherStoryBoard(_ sender: AnyObject) {
        var mainView: UIStoryboard!
        mainView = UIStoryboard(name: "Secundary", bundle: nil)
        let viewcontroller : UIViewController = mainView.instantiateViewController(withIdentifier: "secundaryStoryBoard") as UIViewController
        self.present(viewcontroller, animated: true, completion: nil)
    }
}

