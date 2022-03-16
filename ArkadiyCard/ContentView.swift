//
//  ContentView.swift
//  ArkadiyCard
//
//  Created by Аркадий Рожков on 16.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red: 0.33, green: 0.43, blue: 0.90)
                .ignoresSafeArea(.all)
            VStack {
                Image("Arkadiy")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
                     .frame(width: 200, height: 200)
                     .clipShape(Circle())
                     .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Arkadiy Rozhkov")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .font(Font.custom("BebasNeue-Regular", size: 50))
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(Font.custom("Inspiration-Regular", size: 40))
                Divider()
                InfoView(text: "+7-912-49-48-083", imgName: "phone.fill")
                InfoView(text: "arka146@mail.ru", imgName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


