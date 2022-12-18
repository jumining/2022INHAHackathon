//
//  ShareView.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/18.
//

import SwiftUI

struct ShareView: View {
  
  var body: some View {
    ZStack{
      Color(hex: "#151719").ignoresSafeArea()
      VStack(alignment: .leading, spacing: 0){
        HStack{
          Text("나눔해요")
            .font(.custom("NotoSansKR-Bold", size: 25))
          Spacer()
        }.frame(width: 350, height: 100, alignment: .center)
        Text("나눔글 1 나눔글 1 나눔글 1 나눔글 1 나눔글 1 나눔글 1")
          .font(.custom("NotoSansKR-Regular", size: 15))
        Text("나눔글 1 나눔글 1 나눔글 1 나눔글 1 나눔글 1 나눔글 1")
          .font(.custom("NotoSansKR-Regular", size: 15))
        Text("나눔글 1 나눔글 1 나눔글 1 나눔글 1 나눔글 1 나눔글 1")
          .font(.custom("NotoSansKR-Regular", size: 15))
        Spacer()
      }
    }.foregroundColor(Color.white)
  }
}

struct ShareView_Previews: PreviewProvider {
  static var previews: some View {
    ShareView()
  }
}
