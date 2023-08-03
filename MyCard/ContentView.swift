//
//  ContentView.swift
//  MyCard
//
//  Created by Aaryaneil Nimbalkar on 8/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.61, green: 0.35, blue: 0.71)
                .ignoresSafeArea()
            VStack {
                Image("aaryaneil")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170, height: 170)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Aaryaneil Nimbalkar")
                    .font(Font.custom("Borel-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Software Engineer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+1 669 288 3144", imageName: Image(systemName:"phone"), url: URL(string:"tel:+16692883144")!)
                
                InfoView(text: "aaryaneil.nimbalkar@gmail.com", imageName: Image(systemName:"envelope"), url: URL(string: "mailto:aaryaneil.nimbalkar@gmail.com")!)
                
                InfoView(text: "linkedin.com/in/aaryaneil", imageName: Image("linkedin"), url: URL(string: "https://www.linkedin.com/in/aaryaneil/")!)
                
                InfoView(text: "github.com/aaryaneil", imageName: Image( "github"), url: URL(string: "https://github.com/aaryaneil")!)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone XR"))
    }
}
