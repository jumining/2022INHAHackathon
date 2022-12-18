//
//  Postit.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/19.
//

import SwiftUI

struct Postit: View {
  var title = "군고구마 나눔합니다!"
  var content = "안녕하세요. 407호입니다. 군고구마 한 박스를 집에서 들고와서 나눔하려고 합니당"
  var category = "나눔해요"
  
  var body: some View {
    ZStack(){
      Color(hex: "#151719").ignoresSafeArea()
      HStack(spacing: 0){
        VStack(alignment: .leading, spacing: 0) {
          Text(title)
            .font(.custom("NotoSansKR-Bold", size: 16))
          Text(content)
            .foregroundColor(.white).opacity(0.9)
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
    .frame(width: UIScreen.main.bounds.size.width, height: 80, alignment: .center)
  }
}

struct Postit_Previews: PreviewProvider {
  static var previews: some View {
    Postit()
  }
}
