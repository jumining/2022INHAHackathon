//
//  DelieveryView.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/18.
//

import SwiftUI

struct DelieveryView: View {
  @State var showPopup: Bool = false
  @State var title: String = ""
  @State var content: String = ""
  @State var category: String = ""
  @State var dmoney: String = ""
  @State var place: String = ""
  @State var numPeople: String = ""
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
          Postit(title: "물 공구해요!!!", content: "물 같이 주문하실 분 구합니다", category: "같이 택배").padding(.leading, 35)
          Postit(title: "쌀 공구합니당", content: "쌀 같이 주문하실 분 구합니다. 연락주세요ㅎㅎ", category: "같이 택배").padding(.leading, 35)
          
        }
        .padding(.trailing, 15)
        .padding(.bottom, 10)
        
        Spacer()
      }
      .navigationBarTitle("같이 배달")
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
              .frame(width: 350, height: 600, alignment: .center)
              .foregroundColor(Color(hex: "EBEBEB"))
            
            VStack(spacing: 0){
              Text("글쓰기")
                .font(.custom("NotoSansKR-Bold", size: 15))
                .foregroundColor(Color.black)
              TextField("링크", text: $title)
                .foregroundColor(.black)
                .background(Color.white)
                .frame(width: 295, height: 40, alignment: .center)
              
              TextField("가격", text: $category)
                .foregroundColor(.black)
                .background(Color.white)
                .frame(width: 295, height: 50, alignment: .center)
              
              TextField("배달비", text: $dmoney)
                .foregroundColor(.black)
                .background(Color.white)
                .frame(width: 295, height: 50, alignment: .center)
              
              TextField("최대 구하는 인원 수", text: $numPeople)
                .foregroundColor(.black)
                .background(Color.white)
                .frame(width: 295, height: 50, alignment: .center)
              
              TextField("받을 장소", text: $place)
                .foregroundColor(.black)
                .background(Color.white)
                .frame(width: 295, height: 50, alignment: .center)
              
              TextEditor(text: $content)
                .foregroundColor(Color.black)
                .frame(width: 300, height: 100, alignment: .center)
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
              Spacer().frame(height: 40)
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

struct DelieveryView_Previews: PreviewProvider {
  static var previews: some View {
    DelieveryView()
  }
}
