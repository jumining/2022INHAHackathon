//
//  Network.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/19.
//


import Foundation

class ServerAPI {
  
  static let successRange = 200..<300
  
  static func makeURLRequest(APIAddress: String) -> URLRequest {
          let requestURL = URLRequest(url: URL(string: APIAddress)!)
          
          return requestURL
      }
  
  private func makeURLComponents(path: String) -> URLComponents {
    var urlComponents = URLComponents()
    urlComponents.scheme = APIConstants.scheme
    urlComponents.host = APIConstants.host
    urlComponents.path = path
    
    return urlComponents
  }
  
  
  private func makeURLGETRequest(url: URL) -> URLRequest {
    var urlRequest = URLRequest(url: url)
    urlRequest.httpMethod = "GET"
    urlRequest.addValue("SharePostit", forHTTPHeaderField: "dtype")
    urlRequest.addValue("1", forHTTPHeaderField: "userId")
    
    return urlRequest
  }
  
}
