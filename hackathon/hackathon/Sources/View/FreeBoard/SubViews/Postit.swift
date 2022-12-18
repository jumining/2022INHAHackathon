//
//  Postit.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/19.
//

import SwiftUI

struct Postit: View {
  @State var title = ""
  @State var content = ""
  @State var category = ""
  
  var body: some View {
    ZStack(){
      Color(hex: "#151719").ignoresSafeArea()
      HStack(spacing: 0){
        VStack(alignment: .leading, spacing: 0) {
          Text(title)
            .font(.custom("NotoSansKR-Bold", size: 16))
          Text(content)
            .foregroundColor(.white).opacity(0.9)
            .allowsTightening(false)
            .lineLimit(2)
            .multilineTextAlignment(.leading)
          Text(category)
            .foregroundColor(Color.gray)
        }
        
        .foregroundColor(.white)
        .font(.custom("NotoSansKR-Regular", size: 12))
        Spacer()
      }
    }
    .frame(width: UIScreen.main.bounds.size.width-15, height: 80, alignment: .center)
  }
}
