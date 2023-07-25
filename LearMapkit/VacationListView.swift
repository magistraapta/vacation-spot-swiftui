//
//  VacationListView.swift
//  LearMapkit
//
//  Created by magistra aptam on 25/07/23.
//

import SwiftUI

struct VacationListView: View {
    @ObservedObject var vacation: VacationVIewModel = VacationVIewModel()
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct VacationListView_Previews: PreviewProvider {
    static var previews: some View {
        VacationListView()
    }
}
