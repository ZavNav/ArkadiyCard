//
//  InfoView.swift
//  ArkadiyCard
//
//  Created by Аркадий Рожков on 16.03.2022.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imgName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50, alignment: .center)
            .overlay(HStack {
                Image(systemName: imgName)
                    .foregroundColor(Color(red: 0.24, green: 0.76, blue: 0.83))
                Text(text)
                    .foregroundColor(.black)
                    .font(Font.custom("BebasNeue-Regular", size: 20))
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imgName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
