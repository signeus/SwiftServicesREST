//
//  CommentEntity.swift
//  WebServices
//
//  Created by Kevin on 14/10/16.
//  Copyright © 2016 Kevin. All rights reserved.
//

import Foundation
class CommentEntity: IPopulable{
    
    var postId: Int?
    var id: Int?
    var name: String?
    var email: String?
    var body: String?
    
    
    func populateEntity(map: [String: AnyObject]) {
        postId = map["postId"] as? Int
        id = map["id"] as? Int
        name = map["name"] as? String
        email = map["email"] as? String
        body = map["body"] as? String
    }

}
