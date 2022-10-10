//
//  ContentView.swift
//  Food-TimeTable
//
//  Created by Prakhar Parakh on 15/09/22.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @EnvironmentObject var firestoremanager:FireStoreManager
    
    var body: some View {
        ZStack{
            Image("2022_09_21_0mv_Kleki")
                .resizable()
                .offset(x:-15)
                .ignoresSafeArea()
            VStack(spacing:20){
                Text("\(firestoremanager.dayInWeek)")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.top)
                    .foregroundColor(.black)
                Spacer()
                
                VStack{
                    Text("Breakfast")
                        .font(.title3)
                        .foregroundColor(.primary)
                        .padding(.top)
                    Text("\(firestoremanager.Breakfast)")
                        .font(.title)
                        .padding()
                        .foregroundColor(.secondary)
                        .fontWeight(.medium)
                }
                .frame(width: 200)
                .background(Color.yellow)
                .cornerRadius(10)
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255,opacity: 0.4), lineWidth: 1)
                    )
                
                
                
                
                VStack{
                    Text("Lunch")
                        .font(.title3)
                        .foregroundColor(.primary)
                        .padding(.top)
                    Text("\(firestoremanager.Lunch)")
                        .font(.title)
                        .padding()
                        .foregroundColor(.secondary)
                        .fontWeight(.medium)
                }
                .frame(width: 200)
                .background(Color.yellow)
                .cornerRadius(10)
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255,opacity: 0.4), lineWidth: 1)
                    )
                
                
                
                
                
                VStack{
                    Text("Snacks")
                        .font(.title3)
                        .foregroundColor(.primary)
                        .padding(.top)
                    Text("\(firestoremanager.Snacks)")
                        .font(.title)
                        .padding()
                        .foregroundColor(.secondary)
                        .fontWeight(.medium)
                }
                .frame(width: 200)
                .background(Color.yellow)
                .cornerRadius(10)
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255,opacity: 0.4), lineWidth: 1)
                    )
                
                
                
                
                VStack{
                    Text("Dinner")
                        .font(.title3)
                        .foregroundColor(.primary)
                        .padding(.top)
                    Text("\(firestoremanager.Dinner)")
                        .font(.title)
                        .padding()
                        .foregroundColor(.secondary)
                        .fontWeight(.medium)
                }
                .frame(width: 200)
                .background(Color.yellow)
                .cornerRadius(10)
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255,opacity: 0.4), lineWidth: 1)
                    )
                    
                    
                   
                
                
                
                Spacer()
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(FireStoreManager())
    }
}
