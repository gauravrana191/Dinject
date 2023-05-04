//
//  File.swift
//  
//
//  Created by Gaurav Kumar on 05/05/23.
//

import Foundation

protocol DinjectProtocol {
    func add<T>(type:T.Type,dependent:T)
    func solution<T>(type:T.Type) -> T
}
