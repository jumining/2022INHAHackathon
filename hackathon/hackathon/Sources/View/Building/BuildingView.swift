//
//  Building.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/18.
//

import SwiftUI

struct BuildingView: View {
  var body: some View {
    ZStack{
      Color(hex: "#151719").ignoresSafeArea()
      VStack{
        HStack{
          Text("세대 정보")
            .font(.custom("NotoSansKR-Bold", size: 25))
            .foregroundColor(Color.white)
            .padding(.top, 10)
            .padding(.bottom, 10)
            .padding(.leading, 20)
          Spacer()
        }
        HStack{
        Text("인천광역시 미추홀구 인하로 100번길 10, 인하빌라")
          .font(.custom("NotoSansKR-Bold", size: 15))
          .foregroundColor(Color.white).opacity(0.6)
          .padding(.leading, 20)
          Spacer()
            
        }
        Spacer()
        ZStack{
          Image("bg_building")
            .resizable()
            .frame(width: 400, height: 400, alignment: .center)
          VStack{
            ScrollView(.horizontal, showsIndicators: false){
              LazyHStack{
                ForEach(0..<7) { i in
                  RoundedRectangle(cornerRadius: 16)
                    .frame(width: 70, height: 50, alignment: .center)
                    .foregroundColor( i%3 == 0 ? Color(hex: "#9CA9B3") : Color.yellow)
                    .shadow(color: Color(hex: "48414D").opacity(0.1), radius: 4, x: 0, y: 0)
                    .overlay(Text("30\(i+1)호")
                      .foregroundColor(i%3 == 0 ? Color.white : Color.black))
                }
              }
            }.frame(width: 270, height: 70, alignment: .center)
            
            ScrollView(.horizontal, showsIndicators: false){
              LazyHStack{
                ForEach(0..<7) { i in
                  RoundedRectangle(cornerRadius: 16)
                    .frame(width: 70, height: 50, alignment: .center)
                    .foregroundColor( i%4 != 0 ? Color(hex: "#9CA9B3") : Color.yellow)
                    .shadow(color: Color(hex: "48414D").opacity(0.1), radius: 4, x: 0, y: 0)
                    .overlay(Text("20\(i+1)호")
                      .foregroundColor(i%4 != 0 ? Color.white : Color.black))
                }
              }
            }.frame(width: 270, height: 70, alignment: .center)
            
            ScrollView(.horizontal, showsIndicators: false){
              LazyHStack{
                ForEach(0..<7) { i in
                  RoundedRectangle(cornerRadius: 16)
                    .frame(width: 70, height: 50, alignment: .center)
                    .foregroundColor( i%4 == 1 ? Color(hex: "#9CA9B3") : Color.yellow)
                    .shadow(color: Color(hex: "48414D").opacity(0.1), radius: 4, x: 0, y: 0)
                    .overlay(Text("10\(i+1)호")
                      .foregroundColor(i%4 == 1 ? Color.white : Color.black))
                }
              }
            }.frame(width: 270, height: 70, alignment: .center)
          }.padding(.bottom, 50)
            .font(.custom("NotoSansKR-Medium", size: 15))
            .foregroundColor(Color.white)
          
        }
        Spacer()
      }
    }
  }
}

struct BuildingView_Previews: PreviewProvider {
  static var previews: some View {
    BuildingView()
  }
}