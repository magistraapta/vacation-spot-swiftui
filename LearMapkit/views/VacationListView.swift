//
//  VacationListView.swift
//  LearMapkit
//
//  Created by magistra aptam on 25/07/23.
//

import SwiftUI

struct VacationListView: View {
    @ObservedObject var vacation: VacationVIewModel = VacationVIewModel()
    @State var search: String = ""
    var body: some View {
        VStack (alignment: .leading){
            HStack{
                Text("Find Your Vacation Spots")
                    .font(.title).bold()
                Spacer()
            }
            TextField("Search..", text: $search)
                .padding(.vertical, 8)
                .padding(.horizontal)
                .background(Color.gray.opacity(0.2).cornerRadius(5))
            ForEach(vacation.locationsArray){item in
                NavigationLink {
                    DetailSpotView(image: item.spotImage, title: item.name, description: item.description)
                    
                    
                } label: {
                    HStack{
                        Image("\(item.spotImage)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                            .cornerRadius(10)

                        Text("\(item.name)")
                            .font(.headline)
                    }
                    .padding(.vertical)
                }
                .foregroundColor(.black)
                Divider()
                
                
            }
            
        }
        .padding()
        .background(Color.white)
        
        
    }
}

struct VacationListView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            VacationListView()
        }
        
    }
}
