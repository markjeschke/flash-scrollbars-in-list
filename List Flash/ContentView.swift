//
//  ContentView.swift
//  List Flash
//
//  Created by Mark Jeschke on 12/1/24.
//

import SwiftUI

struct ContentView: View {
    @State private var flashState = false

    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(0..<50, id: \.self) { index in
                        Text("Row \(index)")
                            .frame(minHeight: 44)
                    }
                }
                .listStyle(.plain)
                .scrollIndicatorsFlash(trigger: flashState)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        flashState.toggle()
                    }
                }
            }
            .navigationTitle("List Flash")
        }
    }
}

#Preview {
    ContentView()
}
