//
//  ContentView.swift
//  firstapp
//
//  Created by mac on 31/01/2021.
//

import SwiftUI

struct ContentView: View {
    let location: location
    var body: some View {
        ScrollView{
            Image(location.heroPicture)
        .resizable()
        .scaledToFit()
            
            Text(location.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .padding(.horizontal)
            
            Text(location.advisory)
                .font(.title3)
                .fontWeight(.bold)
                .padding(.top)
            
            Text(location.more)
                .padding(.horizontal)
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView(location: locations().primary)
        }
    }
}
