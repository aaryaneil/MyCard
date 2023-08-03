//
//  InfoView.swift
//  MyCard
//
//  Created by Aaryaneil Nimbalkar on 8/2/23.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: Image
    let url: URL
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.white)
            .frame(width: 300, height: 30 )
            .overlay(
                HStack{
                    imageName
                    //Text(text)
                    Link(text, destination: url)
                    
                }
            )
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: Image(systemName:"globe"), url: URL(string: "www.google.com")!)
    }
}
