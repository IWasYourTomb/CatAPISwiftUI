//
//  APIServiceProtocol.swift
//  catAPI
//
//  Created by matvey on 25.11.2022.
//

import Foundation

protocol APIServiceProtocol{
    func fetchBreeds(url: URL?, completion: @escaping(Result<[Breed], APIError>) -> Void)
}
