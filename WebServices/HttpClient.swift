//
//  HttpServlet.swift
//  WebServices
//
//  Created by Kevin on 13/10/16.
//  Copyright © 2016 Kevin. All rights reserved.
//

import Foundation

class HttpClient {
    private func createStandardSession() -> URLSession{
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }
    
    private func createUrlRequest(url: String) -> URLRequest{
        guard let url = URL(string: url) else{
            print("Error, cannot create URL")
            return URLRequest(url: URL(string: "")!)
        }
        
        return URLRequest(url: url)
    }
    
    public func get(url: String, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Swift.Void){
        
        let session = createStandardSession()
        let urlRequest = createUrlRequest(url: url)
        
        session.dataTask(with: urlRequest, completionHandler: completionHandler).resume()
    }
}
