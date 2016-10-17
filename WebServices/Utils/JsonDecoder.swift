//
//  JsonDecoder.swift
//  WebServices
//
//  Created by Kevin on 14/10/16.
//  Copyright © 2016 Kevin. All rights reserved.
//

import Foundation

class JsonDecoder{
    
    func mapFromData(withData: Data) -> [String: AnyObject]{
        do{
            guard let map = try JSONSerialization.jsonObject(with: withData, options: []) as? [String: AnyObject] else{
                print("Error trying to convert data to JSON")
                return [:]
            }
            return map
        } catch {
            print("Error trying to convert data to JSON")
            return [:]
        }
    }
    
    func mapFromData(withData: Data) -> [[String: AnyObject]]{
        do{
            guard let map = try JSONSerialization.jsonObject(with: withData, options: []) as? [[String: AnyObject]] else{
                print("Error trying to convert data to JSON")
                return [[:]]
            }
            return map
        } catch {
            print("Error trying to convert data to JSON")
            return [[:]]
        }
    }
}
