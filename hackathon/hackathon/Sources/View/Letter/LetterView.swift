//
//  Messeage.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/18.
//

import SwiftUI

struct LetterView: View {
  
  var body: some View {
    
    ZStack{
      Color(hex: "#151719").ignoresSafeArea()
      ScrollView(.vertical, showsIndicators: false) {
        VStack{
          HStack{
            Text("쪽지함")
              .font(.custom("NotoSansKR-Bold", size: 25))
              .foregroundColor(Color.white)
              .padding(.top, 10)
              .padding(.bottom, 30)
              .padding(.leading, 20)
            Spacer()
          }
          ForEach(0..<5) { i in
            OneLetterView()
              .padding(.bottom, 20)
          }.padding(.leading, 20)
            .padding(.trailing, 0)
        }
      }
    }
    
  }
}

struct MessageView_Previews: PreviewProvider {
  static var previews: some View {
    LetterView()
  }
}
