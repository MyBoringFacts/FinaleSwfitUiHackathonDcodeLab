//
//  LoginView.swift
//  simpleLoginHackathon
//
//  Created by Sei Mouk on 2/9/23.
//

//
//  LoginView.swift
//  ToDoList
//
//  Created by Sei Mouk on 26/8/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView( title: "Impact X",
                            subtitle: "Fuel your learning journey",
                            angle: 15,
                            backgroundcolor: .blue)
                
                //LoginForm,
                
                if !viewModel.errorMessage.isEmpty{
                    Text(viewModel.errorMessage).foregroundColor(Color.red)
                }
                HStack{Image(systemName: "envelope.fill").padding(.leading,10)
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    .padding(.trailing,20)}
                
                HStack{Image(systemName: "key.fill").padding(.leading,16)
                TextField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                .padding(.trailing,20)}
                    TDLButton(title: "Login", backgroundcolor: .blue ){

                        viewModel.login()
                        
                    }.padding(.all,20)
               
                
                VStack{
                    Text("New here?")
                    
                    
                    NavigationLink("Create an account", destination: RegisterView()).foregroundColor(Color.blue)
                }.padding(.bottom,30)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
