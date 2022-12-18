//
//  Suggestion.swift
//  hackathon
//
//  Created by 임주민 on 2022/12/18.
//

import SwiftUI

struct ReportView: View {
  @State private var messageText = ""
  @State var messages: [String] = ["집주인에게 건의할 사항이 있나요? \n건의할 사항을 보내주세요!"]
  
  var body: some View {
    ZStack {
    
      Color(.black)
        .edgesIgnoringSafeArea(.bottom)
        .padding(.top,450)
      
      VStack(spacing: 0) {
        ScrollView {
          ForEach(messages, id: \.self) { message in
            if message.contains("[USER]") {
              let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
              
              HStack {
                Spacer()
                Text(newMessage)
                  .padding()
                  .foregroundColor(.white)
                  .background(Color(hex: "#5658DD"))
                  .cornerRadius(16)
                  .padding(.horizontal, 16)
                  .padding(.bottom, 10)
                  .shadow(color: Color(hex: "48414D").opacity(0.2), radius: 16, x: 0, y: 0)
              }
            } else {
              HStack(spacing: 11) {
                Image("icon_bot")
                  .resizable()
                  .frame(width: 32, height: 32)
                  .padding(.leading, 18)
                Text(message)
                  .font(.custom("NotoSansKR-Regular", size: 16))
                  .padding(EdgeInsets(top: 11, leading: 8, bottom: 10, trailing: 7))
                  .foregroundColor(.black)
                  .background(Color(.white))
                  .cornerRadius(16)
                  .shadow(color: Color(hex: "48414D").opacity(0.2), radius: 16, x: 0, y: 0)
                Spacer()
              }.padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 9))
            }
          }.rotationEffect(.degrees(180))
        }.rotationEffect(.degrees(180))
          .background(Color(hex: "#151719").ignoresSafeArea())
          .frame(height: 620)
        
        ZStack {
          HStack {
            ZStack{
              TextField("", text: $messageText)
                .foregroundColor(Color(.black))
                .padding()
                .background(Color(.white))
                .cornerRadius(25.5)
                .frame(width: 358, alignment: .center)
                .onSubmit {
                  sendMessage(message: messageText)
                }
              if messageText.isEmpty {
                Text("메시지를 입력하세요")
                  .font(.custom("NotoSansKR-Regular", size: 16))
                  .foregroundColor(Color(hex: "9B9B9B"))
                  .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0))
                  .frame(width: 358, alignment: .leading)
              }
              Button {
                sendMessage(message: messageText)
              } label: {
                Image("icon_send")
                  .resizable()
                  .frame(width: 30, height: 30, alignment: .center)
                
              }
              .frame(alignment: .trailing)
              .padding(EdgeInsets(top: 0, leading: 308, bottom: 0, trailing: 10))
            }.padding(.top, 17)
          }
        }
        Spacer()
      }
    }
  }
  
  func sendMessage(message: String) {
    withAnimation {
      if message != "" {
        messages.append("[USER]" + message)
        self.messageText = ""
      }
    }
    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
      withAnimation {
        if message != "" {
          messages.append("집주인에게 건의사항을 발신했습니다!")
        }
      }
    }
  }
}

struct SuggestionView_Previews: PreviewProvider {
  static var previews: some View {
    ReportView()
  }
}
