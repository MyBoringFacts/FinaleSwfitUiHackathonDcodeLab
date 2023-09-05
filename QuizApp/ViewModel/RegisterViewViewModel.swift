//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by Sei Mouk on 26/8/23.
//
import FirebaseFirestore
import FirebaseAuth
import Foundation
class RegisterViewViewModel : ObservableObject{
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    init(){
        
    }
    func register(){
        guard validate() else {
            return
        }
        Auth.auth().createUser(withEmail: email, password: password) {[weak self] result, error in
            guard let userId = result?.user.uid else{ // ? -> if else
                return
            }
            self?.insertUserRecord(id: userId) // ? after self make it optional, help to reduce memory leakage        }
        }
        
    }
    private func insertUserRecord(id: String){
        let newUser = User(id: id,
                           name: name,
                           email: email,
                           joined_date: Date().timeIntervalSince1970)
        let db=Firestore.firestore()
        db.collection("users")
            .document(id)
            .setData (newUser.asDictionary() )
    }
    
    public func validate() -> Bool {
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            errorMessage="Please fill in all fields"
            
            return false
        }
        guard email.contains("@") && email.contains(".") else{
            errorMessage="Please fill in valid email Address"
            return false
        }
        guard password.count >= 6 else{
            errorMessage="Passwoed must be more than 5 characters"
            return false
        }
        return true;
        
    }
}
