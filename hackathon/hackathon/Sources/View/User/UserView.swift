//
//  Profile.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/18.
//

import SwiftUI

struct UserView: View {
  
  var horizonBorder: some View {
    Rectangle()
      .frame(width:1, height: 60)
      .foregroundColor(Color.white).opacity(0.2)
  }
    var body: some View {
      ZStack(){
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
            Text("301호 님")
              .font(.custom("NotoSansKR-Bold", size: 25))
              .foregroundColor(Color.white)
              .padding(.top, 10)
              .padding(.bottom, 10)
              .padding(.leading, 20)
            Spacer()
          }
          HStack{
            Rectangle()
              .frame(width: UIScreen.main.bounds.width/3, height: 70, alignment: .center)
              .foregroundColor(.clear)
            horizonBorder
            Rectangle()
              .frame(width: UIScreen.main.bounds.width/3, height: 70, alignment: .center)
              .foregroundColor(.clear)
            horizonBorder
            Rectangle()
              .frame(width: UIScreen.main.bounds.width/3, height: 70, alignment: .center)
              .foregroundColor(.clear)
          }
          
       Spacer()
          
        }
      }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
