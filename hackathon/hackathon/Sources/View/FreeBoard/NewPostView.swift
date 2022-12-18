//
//  NewPostView.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/18.
//

import SwiftUI

struct NewPostView: View {
  var body: some View {
    ZStack{
      Color(hex: "#151719").ignoresSafeArea()
      VStack(alignment: .leading, spacing: 0){
        HStack{
          Text("최신 글")
            .font(.custom("NotoSansKR-Bold", size: 25))
          Spacer()
        }.frame(width: 350, height: 100, alignment: .center)
        Text("최신글 1 최신글 1 최신글 1 최신글 1 최신글 1 최신글 1")
          .font(.custom("NotoSansKR-Regular", size: 15))
        Text("최신글 2 최신글 2 최신글 2 최신글 2 최신글 2 최신글 2")
          .font(.custom("NotoSansKR-Regular", size: 15))
        Text("최신글 3 최신글 3 최신글 3 최신글 3 최신글 3 최신글 3")
          .font(.custom("NotoSansKR-Regular", size: 15))
       
        Spacer()
      }
    }.foregroundColor(Color.white)
  }
}

struct NewPostView_Previews: PreviewProvider {
  static var previews: some View {
    NewPostView()
  }
}
