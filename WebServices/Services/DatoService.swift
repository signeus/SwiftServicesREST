//
//  DatoService.swift
//  WebServices
//
//  Created by Kevin on 17/10/16.
//  Copyright © 2016 Kevin. All rights reserved.
//

import Foundation

class DatoService: IService{
    let kENDPOINT = "posts/"
    
    func get(completionHandler: @escaping ([IEntity]) -> Void) {
        
        HttpClient().get(endpoint: kENDPOINT) { (data: Data?, urlResponse: URLResponse?, error: Error?) in
            let map: [[String: AnyObject]] = JsonDecoder().mapFromData(withData: data!)
            var datoList: [DatoEntity] = []
            for objMap in map{
                let datoEntity: DatoEntity = DatoEntity()
                datoEntity.populateEntity(map: objMap)
                datoList.append(datoEntity)
            }
            
            completionHandler(datoList)
        }
    }
    
    func get(byId: Int, completionHandler: @escaping (IEntity) -> Void) {
        
        HttpClient().get(endpoint: kENDPOINT) { (data: Data?, urlResponse: URLResponse?, error: Error?) in
            let map: [String: AnyObject] = JsonDecoder().mapFromData(withData: data!)
            let datoEntity: DatoEntity = DatoEntity()
            datoEntity.populateEntity(map: map)
            
            completionHandler(datoEntity)
        }
    }
}
