//
//  IService.swift
//  WebServices
//
//  Created by Kevin on 17/10/16.
//  Copyright © 2016 Kevin. All rights reserved.
//

import Foundation

protocol IService {
    func get(completionHandler: @escaping ([IEntity]) -> Swift.Void)
    func get(byId: Int, completionHandler: @escaping (IEntity) -> Void)
}
