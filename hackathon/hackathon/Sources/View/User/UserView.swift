//
//  Profile.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/18.
//

import SwiftUI

struct UserView: View {
  
  @State var setNotification = true
  
  var horizonBorder: some View {
    Rectangle()
      .frame(width:1, height: 90)
      .foregroundColor(Color.white).opacity(0.2)
  }
  
  var bgRectangle: some View {
    Rectangle()
      .frame(width: UIScreen.main.bounds.width/3-15, height: 70, alignment: .center)
      .foregroundColor(.clear)
  }
  
  var body: some View {
    ZStack{
      Color(hex: "#151719").ignoresSafeArea()
      
      VStack{
        HStack{
          Text("내 정보")
            .font(.custom("NotoSansKR-Bold", size: 25))
            .foregroundColor(Color.white)
            .padding(.top, 10)
            .padding(.bottom, 30)
            .padding(.leading, 20)
          Spacer()
        }
        
        HStack{
          Text("302호 님")
            .font(.custom("NotoSansKR-Bold", size: 25))
            .foregroundColor(Color.white)
            .padding(.top, 10)
            .padding(.bottom, 5)
            .padding(.leading, 20)
          Spacer()
        }
        
        HStack{
          Text("인천광역시 미추홀구 인하로 100번길 10, 인하빌라")
            .font(.custom("NotoSansKR-Bold", size: 15))
            .foregroundColor(Color.white).opacity(0.6)
            .padding(.leading, 20)
            .padding(.bottom, 50)
          Spacer()
          
        }
        
        HStack{
          bgRectangle
            .overlay(
              VStack{Image("icon_certificate2").resizable()
                  .frame(width: 50, height: 50, alignment: .center)
                Text("번호 인증")
                  .font(.custom("NotoSansKR-Bold", size: 15))
                  .padding(.top, 10)
                Text("인증 갱신 필요 X")
                  .font(.custom("NotoSansKR-Bold", size: 10))
                  .foregroundColor(Color.white).opacity(0.6)
              })
          
          horizonBorder
          bgRectangle
            .overlay(
              VStack{Image("icon_certificate").resizable()
                  .frame(width: 50, height: 50, alignment: .center)
                Text("집주인 인증")
                  .font(.custom("NotoSansKR-Bold", size: 15))
                  .padding(.top, 10)
                Text("인증 갱신 필요 O")
                  .font(.custom("NotoSansKR-Bold", size: 10))
                  .foregroundColor(Color.white).opacity(0.6)
              })
          horizonBorder
          bgRectangle
            .overlay(
              VStack{
                Text("미인증")
                  .padding(.bottom, 15)
                  .padding(.top, 10)
                  .foregroundColor(Color.white).opacity(0.8)
                Text("GPS 인증")
                  .font(.custom("NotoSansKR-Bold", size: 15))
                  .padding(.top, 10)
                Text("인증이 필요합니다")
                  .font(.custom("NotoSansKR-Bold", size: 10))
                  .foregroundColor(Color.white).opacity(0.6)
              })
          
        }.padding(.bottom, 50)
        
        Rectangle()
          .frame(height: 0.5)
          .foregroundColor(Color.white).opacity(0.2)
          .padding(.bottom, 15)
        
        
        HStack(alignment: .center) {
          Spacer()
          Text("알림 받기")
            .padding(.leading, 12)
            .padding(.bottom, 5)
          
          Spacer()
          Toggle("", isOn: $setNotification)
            .toggleStyle(SwitchToggleStyle(tint: Color(hex: "4CAF50")))
            .padding(.trailing, 25)
        }
        HStack(alignment: .center) {
          Text("로그아웃")
            .padding(.leading, 20)
            .padding(.top, 15)
          Spacer()
        }
        
        Rectangle()
          .frame(height: 0.5)
          .foregroundColor(Color.white).opacity(0.2)
          .padding(.top, 15)
        Group{
          HStack(alignment: .center) {
            Text("서비스 정보")
              .font(.custom("NotoSansKR-Bold", size: 10))
              .foregroundColor(Color.white).opacity(0.6)
              .padding(.leading, 20)
              .padding(.top, 20)
              .padding(.bottom, 10)
            Spacer()
          }
          
          HStack(alignment: .center) {
            Text("공지사항")
              .padding(.leading, 20)
              .padding(.bottom, 20)
            Spacer()
          }
          HStack(alignment: .center) {
            Text("약관 및 정책")
              .padding(.leading, 20)
              .padding(.bottom, 20)
            Spacer()
          }
        }
        Spacer()
      } .font(.custom("NotoSansKR-Bold", size: 18))
        .foregroundColor(Color.white)
    }
  }
}

struct UserView_Previews: PreviewProvider {
  static var previews: some View {
    UserView()
  }
}
