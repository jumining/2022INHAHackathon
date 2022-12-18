//
//  OneLetterView.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/19.
//

import SwiftUI

struct OneLetterView: View {
  var sender = "익명"
  var content = "어제 저녁 너무 시끄러웠어요. 앞으로는 이웃 생각해서 조용히 해주시길 바래요!"
  var time = "11/05 09:28"
  
  var body: some View {
    ZStack(){
      Color(hex: "#151719").ignoresSafeArea()
      HStack(spacing: 0){
        VStack(alignment: .leading, spacing: 0) {
          HStack{
          Text(sender)
            .font(.custom("NotoSansKR-Bold", size: 16))
            Spacer()
            Text(time)
              .font(.custom("NotoSansKR-Regular", size: 12))
              .foregroundColor(Color.gray)
              .padding(.trailing, 10)
          }
          Text(content)
            .foregroundColor(.white).opacity(0.9)
            .allowsTightening(false)
            .lineLimit(2)
            .multilineTextAlignment(.leading)
         
        }
        
        .foregroundColor(.white)
        .font(.custom("NotoSansKR-Regular", size: 14))
      Spacer()
      }
      
    }
    .frame(height: 90, alignment: .center)
  }
}

struct OneLetterView_Previews: PreviewProvider {
    static var previews: some View {
        OneLetterView()
    }
}
