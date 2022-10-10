//  Food_TimeTableApp.swift
//  Food-TimeTable
//  Created by Prakhar Parakh on 15/09/22.

import SwiftUI
import Firebase
@main
struct Food_TimeTableApp: App {
    @StateObject var firestoremanager = FireStoreManager()
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(firestoremanager)
        }
    }
}
