//
//  tmpView.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/19.
//

import SwiftUI

struct tmpView: View {
  @State var showPopup: Bool = false
  @State var title: String = ""
  @State var content: String = ""
  @State var category: String = ""
    var body: some View {
      ZStack{
        RoundedRectangle(cornerRadius: 16)
          .frame(width: 350, height: 600, alignment: .center)
          .foregroundColor(Color(hex: "EBEBEB"))
        
        VStack{
         Text("글쓰기")
            .font(.custom("NotoSansKR-Bold", size: 15))
          
          TextField("제목", text: $title)
            .foregroundColor(.black)
            .background(Color.white)
            .frame(width: 295, height: 40, alignment: .center)
          
          TextField("카테고리", text: $category)
            .foregroundColor(.black)
            .background(Color.white)
            .frame(width: 295, height: 50, alignment: .center)
          
          TextEditor(text: $content)
            .foregroundColor(Color.black)
            .frame(width: 300, height: 230, alignment: .center)
            .padding(.bottom, 5)
            .padding(.leading, 15)
            .padding(.trailing, 15)
          
          VStack(alignment: .leading) {
            HStack(spacing: 20) {
              Spacer()
              ReportImageView()
              ReportImageView()
              ReportImageView()
              Spacer()
            }
            .padding(.bottom, 20)
          }
          
          Button(action: {
            withAnimation {
              self.showPopup.toggle()
            }
          }) {
            Image("icon_postPostit")
              .renderingMode(.original)
          }
        }
      } .font(.custom("NotoSansKR-Bold", size: 20))
    }
}

struct tmpView_Previews: PreviewProvider {
    static var previews: some View {
        tmpView()
    }
}
