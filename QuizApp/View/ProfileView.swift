//
//  ProfileView.swift
//  ToDoList
//
//  Created by Sei Mouk on 26/8/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    var body: some View {
        NavigationView {
            VStack{
                if let user = viewModel.user{
                    profile(user: user)
                } else {
                    Text("loading data . . . ")
                }
            }.navigationTitle("Profile")
        }
        .onAppear{
            viewModel.fetchUser()
        }
    }
    @ViewBuilder
    func profile( user : User ) -> some View{
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color("AccentColor2"))
            .frame(width: 125,height: 125)
        VStack(alignment: .leading ){
            HStack{
                Text("Name: ")
                Text(user.name)
            }.padding()
            HStack{
                Text("Email: ")
                Text(user.email)
            }.padding()
            HStack{
                Text("Member since: ")
                Text("3 September 2023")
            }.padding()
        }
        
        Button("Logout"){
            viewModel.logOut()
        }.padding()
        Spacer()
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
