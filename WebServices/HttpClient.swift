//
//  HttpServlet.swift
//  WebServices
//
//  Created by Kevin on 13/10/16.
//  Copyright © 2016 Kevin. All rights reserved.
//

import Foundation

class HttpController {
    var Url: String
    
    
    init(url: String){
        self.Url = url
    }
    
    public func CreateStandarSession() -> URLSession{
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }
    
    public func CreateUrlRequest() throws -> URLRequest{
        guard let url = URL(string: Url) else{
            print("Error, cannot create URL")
            throw ErrorHttpController.cannotCreateURL
        }
        
        return URLRequest(url: url)
    }
    
    enum ErrorHttpController: Error {
        case cannotCreateURL
    }
}
