//
//  ShareView.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/18.
//

import SwiftUI

struct ShareView: View {
  @State var showPopup: Bool = false
  @State var title: String = ""
  @State var content: String = ""
  @State var place: String = ""
  
  init() {
    UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    
    UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
  }
  var body: some View {
    ZStack{
      Color(hex: "#151719").ignoresSafeArea()
      VStack(alignment: .leading, spacing: 0){
        Spacer().frame(height: 30)
        Group{
          Postit(title: "귤 나눔해용", content: "본가 갔다와서 귤이 너무 많아서 나눔하려고 합니다!", category: "나눔해요").padding(.leading, 35)
          Postit(title:  "군고구마 나눔합니다!", content: "안녕하세요. 407호입니다. 군고구마 한 박스를 집에서 들고와서 나눔 합니당 가져가실분들 연락주세요! :)", category: "나눔해요").padding(.leading, 35)
        }
        .padding(.trailing, 15)
        .padding(.bottom, 10)
        
        Spacer()
      }
      .navigationBarTitle("나눔해요")
      .navigationBarTitleDisplayMode(.inline)
      
      VStack{
        Spacer()
        HStack{
          Spacer()
          Button {
            self.showPopup.toggle()
          } label: {
            Image(systemName: "pencil.circle.fill")
              .foregroundColor(Color.white)
              .font(.custom("NotoSansKR-Bold", size: 50))
              .frame(width: 100, height: 100, alignment: .center)
              .padding(.trailing, 20)
              .padding(.bottom, 40)
          }
        }
      }
      if self.showPopup {
        GeometryReader{_ in
          ZStack{
            RoundedRectangle(cornerRadius: 16)
              .frame(width: 350, height: 450, alignment: .center)
              .foregroundColor(Color(hex: "EBEBEB"))
            
            VStack(spacing: 0){
              Text("글쓰기")
                .font(.custom("NotoSansKR-Bold", size: 15))
                .foregroundColor(Color.black)
              TextField("제목", text: $title)
                .foregroundColor(.black)
                .background(Color.white)
                .frame(width: 295, height: 40, alignment: .center)
              
              TextField("받을 장소", text: $place)
                .foregroundColor(.black)
                .background(Color.white)
                .frame(width: 295, height: 50, alignment: .center)
              
              TextEditor(text: $content)
                .foregroundColor(Color.black)
                .frame(width: 300, height: 120, alignment: .center)
                .padding(.bottom, 15)
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
                .padding(.bottom, 15)
              }
              
              Button(action: {
                withAnimation {
                  self.showPopup.toggle()
                }
              }) {
                Image("icon_postPostit")
                  .renderingMode(.original)
              }
              Spacer().frame(height: 20)
            }
          }
          .font(.custom("NotoSansKR-Bold", size: 15))
          .frame(width: UIScreen.main.bounds.width+40, height: UIScreen.main.bounds.height-50)
          .background(Color.black.opacity(0.5).edgesIgnoringSafeArea(.all))
        }
      }
    }.foregroundColor(Color.white)
      .font(.custom("NotoSansKR-Bold", size: 13))
  }
}

struct ShareView_Previews: PreviewProvider {
  static var previews: some View {
    ShareView()
  }
}
