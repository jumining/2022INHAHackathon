//
//  ModelData.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/19.
//


import Foundation


struct Rows: Codable {
    let rows: [row]
}

struct row: Codable {
    let id: Int
    let username, dtype: String
    let title, content, image: String?
    let createTime: String
    let buildingAddress: String?
    let place: String
    let curParticipantCount, totalParticipantCount: Int
    let link: String
    let price, fee, totalPrice: Int
    let anonymous: Bool
}

struct ShareData: Codable, Identifiable {
  let id: Int 
  let title: String
  let content: String
  let place: String
}
