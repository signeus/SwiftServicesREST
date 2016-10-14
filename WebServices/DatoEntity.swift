//
//  DatoEjemplo.swift
//  WebServices
//
//  Created by Kevin on 13/10/16.
//  Copyright © 2016 Kevin. All rights reserved.
//

class DatoEntity: IPopulable{

    var userId: Int?
    var id: Int?
    var title: String?
    var body: String?
    
    func populateEntity(map: [String: AnyObject]) {
        userId = map["userId"] as? Int
        id = map["id"] as? Int
        title = map["title"] as? String
        body = map["body"] as? String
    }
}
