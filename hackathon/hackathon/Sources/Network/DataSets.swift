//
//  DataSets.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/19.
//

import Foundation

class ShareManager: ObservableObject {
    
  @Published var shares: [ShareData] = [ShareData(id: 0, title: "귤 나눔해용", content: "본가 갔다와서 귤이 너무 많아서 나눔하려고 합니다!", place: "101호 앞"),
                                        ShareData(id: 1, title:  "군고구마 나눔합니다!", content: "안녕하세요. 407호입니다. 군고구마 한 박스를 집에서 들고와서 나눔 합니당 가져가실분들 연락주세요! :)", place: "집 앞"),]
}
