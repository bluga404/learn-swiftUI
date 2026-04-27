//
//  EditNameSheet.swift
//  Sample Property Wraper and Navigations
//
//  Created by Rizal Hilman on 13/04/26.
//
import SwiftUI

struct EditNameSheet: View {
    
    @Binding var fullName: String
    @Binding var isSheetPresented: Bool

    var body: some View {
        NavigationStack {
            Form {
                Section("Your Name") {
                    TextField("Name", text: $fullName)
                }
            }
            .navigationTitle("Edit Name")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem{
                    Button{
                        isSheetPresented = false
                    } label : {
                        Text("Done")
                    }
                }
            }
        }
    }
}
