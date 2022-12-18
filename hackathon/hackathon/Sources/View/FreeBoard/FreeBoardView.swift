//
//  FreeBoard.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/18.
//

import SwiftUI

struct FreeBoardView: View {
  
  @Environment(\.presentationMode) var presentable
  
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
              ForEach(0..<2) { postit in
                Postit().padding(.leading, 35)
                
              }
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
              ForEach(0..<2) { postit in
                Postit().padding(.leading, 35)
                
              }
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
              ForEach(0..<2) { postit in
                Postit().padding(.leading, 35)
                
              }
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
              Text("더 보기      ")
                .font(.custom("NotoSansKR-Bold", size: 13))
                .foregroundColor(Color(hex: "#BBBBFA"))
            }
            ForEach(0..<2) { postit in
              Postit().padding(.leading, 35)
              
            }
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
