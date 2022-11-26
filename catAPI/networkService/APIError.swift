//
//  APIError.swift
//  catAPI
//
//  Created by matvey on 25.11.2022.
//

import Foundation

enum APIError: Error, CustomStringConvertible{
    case badURL
    case BadResponse(statusCode: Int)
    case url(URLError?)
    case parsing(DecodingError?)
    case unknown
    
    var localizedDescription: String{
        switch self{
        case .badURL, .parsing, .unknown:
            return "Что-то пошло не так :("
            
        case .BadResponse(_):
            return "Ошибка соединения"
            
        case .url(let error):
            return error?.localizedDescription ?? "Что-то пошло не так"
        }
    }
    
    var description: String{
        switch self{
        case .unknown: return "Неизвестная ошибка"
        case .badURL: return "Неизвестеный URL"
        case .url(let error):
            return error?.localizedDescription ?? "Ошибка сессии"
        case .parsing(let error):
            return "\(error?.localizedDescription ?? "")"
        case .BadResponse(statusCode: let statusCode):
            return "Ошибка получения данный: \(statusCode)"
        }
    }
}
