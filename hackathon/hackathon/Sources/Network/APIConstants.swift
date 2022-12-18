//
//  APIConstants.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/19.
//

import Foundation

enum APIConstants: String {
  static let baseURL = "http://3.36.144.134:8080/api/postit/list?dtype=SharePostit&userId=1"
  case getPostInfo =  "/api/postit/list"
  static let scheme = "https"
  static let host = "3.36.144.134:8080"
  static let successRange = 200..<300
}
