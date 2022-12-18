//
//  ContentView.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/18.
//

import SwiftUI

class TabBarManager: ObservableObject {
  @Published var showTabBar: Bool = true
  
  static let shared = TabBarManager()
}

enum Tab{
  case freeBoard
  case letter
  case suggestion
  case building
  case user
}


struct ContentView: View {
  
  @State private var selection: Tab = .freeBoard
  
  init() {
    UITabBar.appearance().backgroundColor = UIColor.black
    UITabBar.appearance().unselectedItemTintColor = UIColor.darkGray
  }
  
  @ObservedObject var tabbarManager = TabBarManager.shared
  
  var body: some View {
    TabView(selection: $selection) {
      SuggestionView()
        .tabItem {
          Image(systemName: "highlighter").renderingMode(.template)
          Text("집주인 건의함")
        }
        .tag(Tab.suggestion)

      
      LetterView()
        .tabItem {
          Image(systemName: "quote.bubble.fill").renderingMode(.template)
          Text("쪽지함")
        }
        .tag(Tab.letter)
      
      FreeBoardView()
        .tabItem {
          Image(systemName: "list.triangle").renderingMode(.template)
          Text("전체게시판")
        }
        .tag(Tab.freeBoard)
      
      BuildingView()
        .tabItem {
          Image(systemName: "house.fill")
          Text("세대 정보")
        }
        .tag(Tab.building)
      
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
