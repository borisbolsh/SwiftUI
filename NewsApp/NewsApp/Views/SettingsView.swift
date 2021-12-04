//
//  SettingsView.swift
//  NewsApp
//
//  Created by Boris Bolshakov on 1.12.21.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            
            Form {
                Section(
                    header: Text("Display"),
                    footer: Text("System settings will override Dark mode and use the current device theme")) {
                        
                        Toggle(isOn: .constant(true), label: {
                        Text("Dark Mode")
                    })
                        Toggle(isOn: .constant(true), label: {
                        Text("Use system settings")
                    })
                
                }
                
                Section {
                      Label("Follow me on twitter @", systemImage: "link")
                }
                .foregroundColor(.black)
                .font(.system(size: 16, weight: .semibold))
                
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
