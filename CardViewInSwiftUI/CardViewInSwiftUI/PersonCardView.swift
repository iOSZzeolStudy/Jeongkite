//
//  PersonCardView.swift
//  CardViewInSwiftUI
//
//  Created by 양정연 on 2023/03/10.
//

import SwiftUI

struct PersonCardView: View {
    let person: Person
    
    var body: some View {
        VStack {
            ZStack {
                Image(person.headerImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 80)
                    .clipped()
                Image(person.profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                    .background(Color(.black))
                    .clipShape(Circle())
                    .offset(y: 40)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
            }
            .overlay(alignment: .topTrailing) {
                Button {
                    print("")
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.white)
                        .padding(6)
                }
            }
            
            VStack(spacing: 0.0) {
                Button {
                    print("")
                } label: {
                    Text("Follow")
                        .padding(.vertical, 4)
                        .padding(.horizontal)
                        .overlay {
                            Capsule()
                                .stroke(lineWidth: 2)
                        }
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
                
                HStack {
                    Text(person.name)
                        .fontWeight(.bold)
                    
                    Text("· \(person.followerCount)")
                        .foregroundColor(.secondary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                
                Text(person.jobTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.leading, .bottom])
                
            }
        }
        .background(Color(.tertiarySystemFill))
        .cornerRadius(12)
    }
}

struct PersonCardView_Previews: PreviewProvider {
    static var previews: some View {
        PersonCardView(person: person1)
            .previewLayout(.sizeThatFits)
    }
}
