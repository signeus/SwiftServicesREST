//
//  IClient.swift
//  WebServices
//
//  Created by Kevin on 17/10/16.
//  Copyright © 2016 Kevin. All rights reserved.
//

import Foundation

protocol IClient {
    func get(endpoint: String, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Swift.Void)
}
