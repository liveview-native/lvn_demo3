//
//  ContentView.swift
//  LvnDemo3
//

import SwiftUI
import LiveViewNative

struct ContentView: View {
    var body: some View {
        LiveView(.automatic(URL(string: "https://example.com/")!))
    }
}
