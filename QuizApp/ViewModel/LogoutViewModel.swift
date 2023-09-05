//
//  LogoutViewModel.swift
//  simpleLoginHackathon
//
//  Created by Sei Mouk on 2/9/23.
//

import Foundation
//
import FirebaseAuth
import FirebaseFirestore
import Foundation
class LogoutViewModel: ObservableObject{
    @Published var user: User?  = nil
    init(){}
    func logOut(){
        do {
            try Auth.auth().signOut()
        }catch{
            print(error)
        }
    }
}
