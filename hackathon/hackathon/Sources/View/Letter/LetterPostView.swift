//
//  LetterPostView.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/19.
//

import SwiftUI

struct LetterPostView: View {
  
  @State var text: String = ""
  
    var body: some View {
      ZStack{
        Color(.black)
    
        ZStack{
          Image("bg_postletter")
          
          VStack{
          TextEditor(text: .constant("쪽지 내용을 입력하세요."))
            .background(Color.gray).opacity(0.2)
            .foregroundColor(Color.black)
            .frame(width: 300, height: 230, alignment: .center)
            .padding(.bottom, 20)
            .padding(.top, 40)
          
          Button(action: {
            //
          }) {
            Image("icon_postLetter")
              .renderingMode(.original)
              
          }
          }
        }
        
      }
      .padding()
      .background(Color(.white))
      .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct etterPostView_Previews: PreviewProvider {
    static var previews: some View {
      LetterPostView()
    }
}
