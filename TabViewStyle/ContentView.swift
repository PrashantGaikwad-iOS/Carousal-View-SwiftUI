//
//  ContentView.swift
//  TabViewStyle
//
//  Created by Prashant Gaikwad on 15/07/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 1
    
    var body: some View {
        TabView(selection:$selection) {
            
            ForEach(1...9,id:\.self) { index in
                Image("Animal\(index)")
                    .resizable()
                    .frame(width:selection == index ? 200 : 100,height: selection == index ? 200 : 100)
                    .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .background(Color.red)
                    .cornerRadius(20)
                    .offset(y: -15)
                    .tag(index)
            }
            
        }
        .frame(height: 350)
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .tabViewStyle(PageTabViewStyle())
        .animation(.easeOut)
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
