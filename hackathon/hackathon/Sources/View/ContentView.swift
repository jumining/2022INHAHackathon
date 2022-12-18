//
//  ContentView.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/18.
//

import SwiftUI

enum Tab{
  case freeBoard
  case letter
  case report
  case building
  case user
}

struct ContentView: View {
  
  @State private var selection: Tab = .freeBoard
  
  init() {
    UITabBar.appearance().backgroundColor = UIColor.black
    UITabBar.appearance().unselectedItemTintColor = UIColor.darkGray
  }
  
  var body: some View {
    TabView(selection: $selection) {
      ReportView()
        .tabItem {
          Image(systemName: "highlighter")
          Text("집주인 건의함")
        }
        .tag(Tab.report)
      
      BuildingView()
        .tabItem {
          Image(systemName: "house.fill")
          Text("세대 정보")
        }
        .tag(Tab.building)
      
      
      FreeBoardView()
        .tabItem {
          Image(systemName: "list.triangle")
          Text("전체게시판")
        }
        .tag(Tab.freeBoard)
      
      
      LetterView()
        .tabItem {
          Image(systemName: "quote.bubble.fill")
          Text("쪽지함")
        }
        .tag(Tab.letter)
      
     
      UserView()
        .tabItem {
          Image(systemName: "person")
          Text("내 정보")
        }
        .tag(Tab.user)
    }
    .accentColor(.white)
    .foregroundColor(.white)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
