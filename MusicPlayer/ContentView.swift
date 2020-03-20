//
//  ContentView.swift
//  MusicPlayer
//
//  Created by Максим on 20.03.2020.
//  Copyright © 2020 Максим. All rights reserved.
//

import SwiftUI

struct ContentView: View {
var body: some View {
        TabView {
            LibraryView()
                .tabItem {
                    Image(systemName: "music.note.list")
                    Text("Library")
                }
            
            RecommendationView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("For you")
                }
            
            BrowseView()
                .tabItem {
                    Image(systemName: "tv.music.note")
                    Text("Browse")
                }
        }
        .accentColor(Color.init(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
