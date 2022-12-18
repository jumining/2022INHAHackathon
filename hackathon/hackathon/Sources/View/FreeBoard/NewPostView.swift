//
//  NewPostView.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/18.
//

import SwiftUI

struct NewPostView: View {
  @State var showPopup: Bool = false
  
  init() {
    UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    
    UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
  }
  var body: some View {
    ZStack{
      Color(hex: "#151719").ignoresSafeArea()
      VStack(alignment: .leading, spacing: 0){
        Spacer().frame(height: 30)
        Group{Postit(title: "커피 같이 주문", content: "최소 금액 너무 큰데 같이 배달 주문하실 분 구해요", category: "같이 배달").padding(.leading, 35)
          Postit(title:  "군고구마 나눔합니다!", content: "안녕하세요. 407호입니다. 군고구마 한 박스를 집에서 들고와서 나눔 합니당 가져가실분들 연락주세요! :)", category: "같이 택배").padding(.leading, 35)}
        .padding(.trailing, 15)
        .padding(.bottom, 10)
        
        Spacer()
      }
      .navigationBarTitle("최신 글")
      .navigationBarTitleDisplayMode(.inline)
      
      VStack{
        Spacer()
        HStack{
          Spacer()
          Image(systemName: "pencil.circle.fill")
            .foregroundColor(Color.white)
            .font(.custom("NotoSansKR-Bold", size: 50))
            .frame(width: 100, height: 100, alignment: .center)
        }
      }
      
    }.foregroundColor(Color.white)
      .font(.custom("NotoSansKR-Bold", size: 13))
  }
}

struct NewPostView_Previews: PreviewProvider {
  static var previews: some View {
    NewPostView()
  }
}
