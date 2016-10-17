//
//  CommentService.swift
//  WebServices
//
//  Created by Kevin on 17/10/16.
//  Copyright © 2016 Kevin. All rights reserved.
//

import Foundation

class CommentService: IService{
    let kENDPOINT = "comments/"
    
    func get(completionHandler: @escaping ([IEntity]) -> Void) {
        
        HttpClient().get(endpoint: kENDPOINT) { (data: Data?, urlResponse: URLResponse?, error: Error?) in
            let map: [[String: AnyObject]] = JsonDecoder().mapFromData(withData: data!)
            var commentList: [CommentEntity] = []
            for objMap in map{
                let commentEntity: CommentEntity = CommentEntity()
                commentEntity.populateEntity(map: objMap)
                commentList.append(commentEntity)
            }
            
            completionHandler(commentList)
        }
    }
    
    func get(byId: Int, completionHandler: @escaping (IEntity) -> Void) {
        HttpClient().get(endpoint: kENDPOINT.appending("\(byId)")) { (data: Data?, urlResponse: URLResponse?, error: Error?) in
            let map: [String: AnyObject] = JsonDecoder().mapFromData(withData: data!)
            let commentEntity: CommentEntity = CommentEntity()
            commentEntity.populateEntity(map: map)
            
            completionHandler(commentEntity)
        }
    }
    
}
