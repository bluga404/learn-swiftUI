//
//  ProfileView.swift
//  Sample Property Wraper and Navigations
//
//  Created by Rizal Hilman on 13/04/26.
//
import SwiftUI

struct ProfileView: View {
    // MARK: Properties / variables
    @State var fullName: String = "John Doe"
    @State var isSheetPresented: Bool = false
    
    // MARK: View body
    var body: some View {
            List {
                // Avatar + name
                Section {
                    HStack(spacing: 16) {
                        ZStack {
                            Circle()
                                .fill(Color.indigo.opacity(0.2))
                                .frame(width: 64, height: 64)
                            Text("JD")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundStyle(.indigo)
                        }
                        VStack(alignment: .leading, spacing: 2) {
                            Text(fullName)
                                .font(.headline)
                            Text("Music Lover")
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                    }
                    .padding(.vertical, 8)
                }

                // Settings
                Section("Settings") {
                    Button {
                        // code goes here
                        isSheetPresented = true
                    } label: {
                        Label("Edit Name", systemImage: "pencil")
                    }

                    Button(role: .destructive) {
                        
                    } label: {
                        Label("Log Out", systemImage: "rectangle.portrait.and.arrow.right")
                    }
                }
                .sheet(isPresented: $isSheetPresented) {
                    //
                    EditNameSheet(fullName: $fullName, isSheetPresented: $isSheetPresented)
                }
            }
    }
}

#Preview {
    ProfileView()
}
