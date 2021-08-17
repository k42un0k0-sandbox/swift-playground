//
//  ContentView.swift
//  swift-playground
//
//  Created by 白鳥天太 on 2021/08/17.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var modelData = ModelData()
    var body: some View {
        TabView {
            LandmarkList()
                .environmentObject(modelData)
                .tabItem {
                    VStack {
                        Image(systemName: "a")
                        Text("TabA")
                    }
            }.tag(1)
            TabBView()
                .tabItem {
                    VStack {
                        Image(systemName: "bold")
                        Text("TabB")
                    }
            }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
