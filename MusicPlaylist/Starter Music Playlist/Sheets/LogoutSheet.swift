//
//  LogoutSheet.swift
//  Sample Property Wraper and Navigations
//
//  Created by Rizal Hilman on 13/04/26.
//
import SwiftUI

struct LogoutSheet: View {

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "rectangle.portrait.and.arrow.right")
                .font(.system(size: 48))
                .foregroundStyle(.red)

            Text("Log Out?")
                .font(.title2)
                .fontWeight(.semibold)

            Text("Are you sure you want to log out?")
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)

            HStack(spacing: 16) {
                Button("Cancel") {
                    // dismiss sheet
                }
                .buttonStyle(.bordered)
                .frame(maxWidth: .infinity)

                Button("Log Out", role: .destructive) {
                    // logout action
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                .frame(maxWidth: .infinity)
            }
            .padding(.horizontal)
        }
        .padding(32)
        .presentationDetents([.height(280)])
    }
}
