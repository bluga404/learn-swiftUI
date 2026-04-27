//
//  MainTabView.swift
//  Starter Music Playlist
//
//  Created by Walker Valentinus Simanjuntak on 14/04/26.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            // Tab Playlist
            PlaylistView()
                .tabItem{
                    Label("Playlist", systemImage: "music.note.list")
                }
            
            //Tab Profile
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}

#Preview {
    MainTabView()
}
