//
//  APIMockService.swift
//  catAPI
//
//  Created by matvey on 25.11.2022.
//

import Foundation

struct APIMockService: APIServiceProtocol{
    
    var result: Result<[Breed], APIError>
    
    func fetchBreeds(url: URL?, completion: @escaping (Result<[Breed], APIError>) -> Void) {
        completion(result)
    }
}
