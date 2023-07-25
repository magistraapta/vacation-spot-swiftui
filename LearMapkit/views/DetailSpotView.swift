//
//  DetailSpotView.swift
//  LearMapkit
//
//  Created by magistra aptam on 25/07/23.
//

import SwiftUI

struct DetailSpotView: View {
    let image: String
    let title: String
    let description: String
    var body: some View {
        VStack(spacing: 32){
            VStack(alignment: .leading){
                Image("\(image)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                Text("\(title)")
                    .font(.title2).bold()
            }
            
            VStack{
                Text("\(description)")
            }
            Spacer()
        }
        .padding()
    }
}

struct DetailSpotView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSpotView(image: "senggigi", title: "Kota tua ampenan", description: "bla")
    }
}
