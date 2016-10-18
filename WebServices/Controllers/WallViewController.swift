//
//  WallViewController.swift
//  WebServices
//
//  Created by Kevin on 18/10/16.
//  Copyright © 2016 Kevin. All rights reserved.
//

import UIKit

class WallViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var table: UITableView!
    var listEntities: [DatoEntity] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        recoverInformation()
        table.estimatedRowHeight = 150
        table.rowHeight = UITableViewAutomaticDimension
        table.delegate = self
        table.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listEntities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cellReusable"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! WallTableViewCell
        
        let row = indexPath.row
        let datoEntity = listEntities[row]
        cell.title.sizeToFit()
        cell.title.text = datoEntity.title
        cell.userId.text = String(describing: datoEntity.userId!)
        cell.id.text = String(describing: datoEntity.id!)
        cell.body.sizeToFit()
        cell.body.text = datoEntity.body
        
        return cell
    }
    
    // MARK:  UITableViewDelegate Methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    private func recoverInformation(){
        DatoService().get { (entity: [IEntity]) in
            self.listEntities = entity as! [DatoEntity]
            self.table.reloadData()
        }
    }
}
