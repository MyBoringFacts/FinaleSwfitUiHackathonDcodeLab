//
//  ContentView.swift
//  ToDoList
//
//  Created by Sei Mouk on 26/8/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
            accountView
            
        } else {
         
            LoginView()
        }
    }
    @ViewBuilder
    var accountView: some View {
        TabView{
            CourseView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Courses", systemImage: "graduationcap").background(Color.gray)
                }
            ToDoListsView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home",systemImage: "house")
                }
            ContentView()
                .tabItem {
                    Label("Quiz", systemImage: "lightbulb.fill")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile",systemImage: "person.circle")
                }
            
        }
        
    }
        
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                MainView()
            }
        
        
        
        
    }
    
}
