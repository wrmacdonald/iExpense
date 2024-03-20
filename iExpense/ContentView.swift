//
//  ContentView.swift
//  iExpense
//
//  Created by Wes MacDonald on 3/19/24.
//

import Observation
import SwiftUI

// Archiving Swift objects with Codable protocol
struct User: Codable {
    let firstName: String
    let lastName: String
}

//// showing & hiding views with sheet
//struct SecondView: View {
//    @Environment(\.dismiss) var dismiss
//    
//    let name: String
//    
//    var body: some View {
//        Text("Second View")
//        Text("Hello, \(name)!")
//        Button("Dismiss") {
//            dismiss()
//        }
//    }
//}

// Sharing data between multiple views
//@Observable
//class User {
//    var firstName = "Bilbo"
//    var lastName = "Baggins"
//}

struct ContentView: View {
    // Archiving Swift objects with Codable
    @State private var user = User(firstName: "Taylor", lastName: "Swift")
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
    
    
//    // Storing user settings with User Defaults
//    @AppStorage("tapCount") private var tapCount = 0
//
//    var body: some View {
//        Button("Tap Count: \(tapCount)") {
//            tapCount += 1
//        }
//    }
        
        
//    // Deleting items with onDelete() & adding a Edit button
//    @State private var numbers = [Int]()
//    @State private var currentNumber = 1
//    
//    var body: some View {
//        NavigationStack {
//            VStack {
//                List {
//                    ForEach(numbers, id: \.self) {
//                        Text("Row \($0)")
//                    }
//                    .onDelete(perform: removeRows)
//                }
//                
//                Button("Add Number") {
//                    numbers.append(currentNumber)
//                    currentNumber += 1
//                }
//            }
//            .toolbar {
//                EditButton()
//            }
//        }
//    }
//    
//    func removeRows(at offsets: IndexSet) {
//        numbers.remove(atOffsets: offsets)
//    }
    
    
//    @State private var showingSheet = false
//    
//    var body: some View {
//        Button("Show Sheet") {
//            showingSheet.toggle()
//        }
//        .sheet(isPresented: $showingSheet, content: {
//            SecondView(name: "Westopher")
//        })
//    }
    
//    @State private var user = User()
//    
//    var body: some View {
//        VStack {
//            Text("Your name is \(user.firstName) \(user.lastName)")
//            
//            TextField("First Name", text: $user.firstName)
//            TextField("Last Name", text: $user.lastName)
//        }
//        .padding()
//    }
}

#Preview {
    ContentView()
}
