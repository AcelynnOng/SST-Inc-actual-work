//
//  ContentView.swift
//  IOS lesson 7
//
//  Created by Acelynn Ong on 24/8/23.
//

import SwiftUI

struct ContentView: View {
    @State var count = 1
    @State var toggle = false
    @State var toggle2 = false
    var body: some View {
        VStack {
            Spacer()
            Toggle("Water", isOn: $toggle)
                .padding(.horizontal)
                .padding(.vertical, 5)
            Toggle("Drink" , isOn: $toggle2) .padding(.horizontal)
                .padding(.vertical, 5)
            .padding(.horizontal )
            .padding(.vertical, 5)
            
            Text("Other choices")
                .contextMenu {
                    Button(role: .destructive) {
                        print("pressed button 4")
                    } label: {
                        Text("Button 4")
                    }
                    Button {
                        print("Pressed 1")
                    } label: {
                        Text("Button 1")
                    }
                }
            Menu {
                Button {
                    print("Pressed choose later on ")
                } label: {
                    Text("choose later on")
                }
                Button {
                    print("already chose")
                } label: {
                    Text("already chose")
                }
                Divider()
                Button(role: .destructive) {
                    print("pressed appertizers")
                } label: {
                    Text("appertizers instead")
                }
            } label: {
                Image(systemName:
                        "filemenu.and.selection")
            }
            Text("\(count)")
            Stepper("number of people", value: $count )
                .padding(.horizontal)
            
            Stepper(value: $count) {
                Image(systemName: "plusminus")
            }
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

