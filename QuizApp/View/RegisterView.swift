//
//  RegisterView.swift
//  ToDoList
//
//  Created by Sei Mouk on 26/8/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
     
    var body: some View {
        VStack{
            HeaderView( title: "Impact X",
                                subtitle: "Start learning now ",
                                  angle: -15,
                        backgroundcolor: viewModel.errorMessage.isEmpty ? .green : .red) // Change background color conditionally)
            
            if !viewModel.errorMessage.isEmpty{
                Text(viewModel.errorMessage).foregroundColor(Color.red)
            
            }
            HStack{Image(systemName: "person.circle.fill")
                TextField("Full Name",text: $viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(viewModel.errorMessage.isEmpty ? .gray : .red)
                .padding(.trailing,10)
                
            }.padding(.all,10)
            HStack{Image(systemName: "envelope.fill")
                TextField("Email",text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(viewModel.errorMessage.isEmpty ? .gray : .red)
                .padding(.trailing,10)
                
            }.padding(.all,10)
            HStack{Image(systemName: "key")
                TextField("Password",text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(viewModel.errorMessage.isEmpty ? .gray : .red)
                .padding(.trailing,10)
                
            }.padding(.all,10)
            Spacer()
            
//            HStack{Image(systemName: "envelope.fill")
//                TextField("Email",text: $viewModel.email).padding(.top,3)
//                    .padding(.bottom,3)
//                    .textFieldStyle(DefaultTextFieldStyle())
//                    .autocorrectionDisabled()
//                    .autocapitalization(.none)
//                    .border(Color("AccentPink").opacity(0.5))
//                .padding(.trailing,10)}.padding()
//
//            HStack{Image(systemName: "envelope.fill")
//                SecureField("Password",text: $viewModel.password).padding(.top,3)
//                    .padding(.bottom,3)
//                    .autocorrectionDisabled()
//                    .autocapitalization(.none)
//                    .textFieldStyle(DefaultTextFieldStyle())
//                    .border(Color("AccentPink").opacity(0.5))
//
//                    .padding(.trailing,10)       }
//            .padding()
            
                TDLButton(title: "Create an account", backgroundcolor: viewModel.errorMessage.isEmpty ? .black : .red){
                    //to attempt register
                    viewModel.register()
                }
            
           
            Spacer()
        }

    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
