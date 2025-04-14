//
//  NetworkManager.swift
//
//
//  Created by Phil Wright on 4/14/25.
//

import Foundation

enum LoadingState {
    case idle
    case loading
    case error
    case completed
}

public protocol HTTPClient {
    var session: URLSession { get }
    func get(from url: URL, completion: @escaping (Result<Data, Error>) -> Void)
}

class APIClient: HTTPClient {
    
    let endPoints = EndPoints()
    var session = URLSession.shared
    var loadingStatus: LoadingState = .idle
    
    public func get(from url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
        
        loadingStatus = .loading
        
        let task = session.dataTask(with: url) { [weak self] data, response, error in
            if let error = error {
                completion(.failure(error))
                self?.loadingStatus = .idle
            } else if let data = data {
                completion(.success(data))
                self?.loadingStatus = .idle
            }
        }
        task.resume()
    }
}
