//
//  Networking.swift
//  Razecore
//
//  Created by Jeeeun Lim on 2020/11/20.
//

import Foundation

extension Razecore {
    public class Networking {
        
        /// responsible for handling all networking calls
        public class Manager {
            public init(){}
            
            
            private let session = URLSession.shared
            
            public func loadData(from url:URL, completionHandler:@escaping (NetworkResult<Data>) -> Void){
                let task = session.dataTask(with: url) { (data, response, error) in
                    let result = data.map(NetworkResult<Data>.success) ?? .failure(error)
                completionHandler(result)
                }
                task.resume()
            }
            
        }
        
        public enum NetworkResult<Value> {
            case success(Value)
            case failure(Error?)
        }
    }
}
