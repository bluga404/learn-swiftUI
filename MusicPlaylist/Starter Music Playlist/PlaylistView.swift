//
//  PlaylistView.swift
//  Sample Property Wraper and Navigations
//
//  Created by Rizal Hilman on 13/04/26.
//
import SwiftUI

struct PlaylistView: View {
    // MARK: Properties / variables
    
    // MARK: View body
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    SongDetailView()
                } label: {
                    SongRow(
                        song: "Bohemian Rhapsody - Queen"
                    )
                }
                
                NavigationLink {
                    SongDetailView()
                } label: {
                    SongRow(
                        song: "Hotel CaliforniaEagles - Eagles"
                    )
                }
                
                NavigationLink {
                    SongDetailView()
                } label: {
                    SongRow(
                        song: "Stairway to Heaven - Led Zeppelin"
                    )
                }
            }
            .navigationTitle("Playlist")
        }
    }

}


#Preview {
    PlaylistView()
}
