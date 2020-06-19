//
//  ContentView.swift
//  Repro
//
//  Created by Daniel Gstoehl on 19.06.20.
//  Copyright © 2020 Ubique. All rights reserved.
//

import SwiftUI
import ReproducibleLibrary

struct ContentView: View {
    var body: some View {
        Text(hello(message: "World"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
