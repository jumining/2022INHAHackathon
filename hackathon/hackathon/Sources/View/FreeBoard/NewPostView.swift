//
//  NewPostView.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/18.
//

import SwiftUI

struct NewPostView: View {
  @State var showPopup: Bool = false
  
  init() {
    UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    
    UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
  }
  var body: some View {
    ZStack{
      Color(hex: "#151719").ignoresSafeArea()
      VStack(alignment: .leading, spacing: 0){
        Spacer().frame(height: 30)
        ForEach(0..<2) { postit in
          Postit().padding(.leading, 35)
          
        }
        .padding(.trailing, 15)
        .padding(.bottom, 10)
        
        Spacer()
      }
      .navigationBarTitle("최신 글")
      .navigationBarTitleDisplayMode(.inline)
      
      VStack{
        Spacer()
        HStack{
          Spacer()
          Image(systemName: "pencil.circle.fill")
            .foregroundColor(Color.white)
            .font(.custom("NotoSansKR-Bold", size: 50))
            .frame(width: 100, height: 100, alignment: .center)
        }
      }
      
    }.foregroundColor(Color.white)
      .font(.custom("NotoSansKR-Bold", size: 13))
  }
}

struct NewPostView_Previews: PreviewProvider {
  static var previews: some View {
    NewPostView()
  }
}
