//
//  ContentView.swift
//  CardViewInSwiftUI
//
//  Created by 양정연 on 2023/03/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(people, id: \.name) { person in
                PersonCardView(person: person)
                    .listRowSeparator(.hidden)
            }
        }
        .listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
