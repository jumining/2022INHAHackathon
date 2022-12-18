//
//  FreeBoard.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/18.
//

import SwiftUI

struct FreeBoardView: View {
  
  @EnvironmentObject private var shareVM: ShareManager
  @State var showingNewPost: Bool = false
  
  var body: some View {
    NavigationView{
      ZStack{
        Color(hex: "#151719").ignoresSafeArea()
        ScrollView(.vertical, showsIndicators: false){
          LazyVStack(spacing: 0){
            HStack{
              Text("전체 게시판")
                .font(.custom("NotoSansKR-Bold", size: 25))
                .foregroundColor(Color.white)
                .padding(.top, 10)
                .padding(.bottom, 15)
                .padding(.leading, 15)
              Spacer()
            }
            
            // 1) 최신 글
            ZStack{
              VStack(spacing: 0){
                HStack{
                  Text("최신 글")
                    .font(.custom("NotoSansKR-Bold", size: 20))
                    .padding(.leading, 13)
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                  Spacer()
                  NavigationLink(
                    destination: NewPostView(),
                    label: {
                      Text("더 보기     ")
                        .font(.custom("NotoSansKR-Bold", size: 13))
                        .foregroundColor(Color(hex: "#BBBBFA"))
                        .padding(.trailing, 10)
                    })
                  
                }
                Group{Postit(title: "커피 같이 주문", content: "최소 금액 너무 큰데 같이 배달 주문하실 분 구해요", category: "같이 배달").padding(.leading, 35)
                  Postit(title:  "군고구마 나눔합니다!", content: "안녕하세요. 407호입니다. 군고구마 한 박스를 집에서 들고와서 나눔 합니당 가져가실분들 연락주세요! :)", category: "같이 택배").padding(.leading, 35)}
                .padding(.trailing, 15)
                .padding(.bottom, 10)
              }
              .frame(width:380, height:260)
              Rectangle()
                .frame(width:380, height:250)
                .foregroundColor(.clear)
                .overlay(
                  RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(hex: "#5658DD"), lineWidth: 1)
                )
            }
            
            // 2) 나눔해요
            ZStack{
              VStack(spacing: 0){
                HStack{
                  Text("나눔해요")
                    .font(.custom("NotoSansKR-Bold", size: 20))
                    .padding(.leading, 13)
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                  Spacer()
                  NavigationLink(
                    destination: ShareView(),
                    label: {
                      Text("더 보기     ")
                        .font(.custom("NotoSansKR-Bold", size: 13))
                        .foregroundColor(Color(hex: "#BBBBFA"))
                        .padding(.trailing, 10)
                    })
                }
                ForEach(shareVM.shares) { svm in
                  Postit(title: svm.title , content: svm.content , category: "나눔해요").padding(.leading, 35)
                  
                }
                .padding(.trailing, 15)
                .padding(.bottom, 10)
              }
              .frame(width:380, height:260)
              Rectangle()
                .frame(width:380, height:250)
                .foregroundColor(.clear)
                .overlay(
                  RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(hex: "#5658DD"), lineWidth: 1)
                )
            }
            
            // 3) 같이 배달
            ZStack{
              VStack(spacing: 0){
                HStack{
                  Text("같이 배달")
                    .font(.custom("NotoSansKR-Bold", size: 20))
                    .padding(.leading, 13)
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                  Spacer()
                  NavigationLink(
                    destination: DelieveryView(),
                    label: {
                      Text("더 보기     ")
                        .font(.custom("NotoSansKR-Bold", size: 13))
                        .foregroundColor(Color(hex: "#BBBBFA"))
                        .padding(.trailing, 10)
                    })
                }
                Group{
                  Postit(title: "물 공구해요!!!", content: "물 같이 주문하실 분 구합니다", category: "같이 택배").padding(.leading, 35)
                  Postit(title: "쌀 공구합니당", content: "쌀 같이 주문하실 분 구합니다. 연락주세요ㅎㅎ", category: "같이 택배").padding(.leading, 35)
                  
                }
                .padding(.trailing, 15)
                .padding(.bottom, 10)
              }
              .frame(width:380, height:260)
              Rectangle()
                .frame(width:380, height:250)
                .foregroundColor(.clear)
                .overlay(
                  RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(hex: "#5658DD"), lineWidth: 1)
                )
            }
          }
          
          // 같이 택배
          ZStack{
            VStack(spacing: 0){
              HStack{
                Text("같이 택배")
                  .font(.custom("NotoSansKR-Bold", size: 20))
                  .padding(.leading, 13)
                  .padding(.top, 15)
                  .padding(.bottom, 15)
                Spacer()
                NavigationLink(
                  destination: CourierView(),
                  label: {
                    Text("더 보기     ")
                      .font(.custom("NotoSansKR-Bold", size: 13))
                      .foregroundColor(Color(hex: "#BBBBFA"))
                      .padding(.trailing, 10)
                  })
              }
              Group{
                Postit(title: "커피 같이 주문", content: "최소 금액 너무 큰데 같이 배달 주문하실 분 구해요", category: "같이 배달").padding(.leading, 35)
                Postit(title: "엽떡 주문", content: "같이 배달 주문하실 분 구합니다", category: "같이 배달").padding(.leading, 35)
              }
              .padding(.trailing, 15)
              .padding(.bottom, 10)
            }
            .frame(width:380, height:260)
            Rectangle()
              .frame(width:380, height:250)
              .foregroundColor(.clear)
              .overlay(
                RoundedRectangle(cornerRadius: 16)
                  .stroke(Color(hex: "#5658DD"), lineWidth: 1)
              )
          }
          
        }.padding(.bottom, 0.1)
      }.foregroundColor(Color.white)
        .navigationBarTitle("", displayMode: .automatic)
        .navigationBarHidden(true)
    }
    
  }
}

struct FreeBoardView_Previews: PreviewProvider {
  static var previews: some View {
    FreeBoardView()
  }
}
