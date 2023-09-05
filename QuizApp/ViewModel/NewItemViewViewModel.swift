//
//  NewITemViewViewModel.swift
//  ToDoList
//
//  Created by Sei Mouk on 26/8/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
class NewItemViewViewModel: ObservableObject{
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    init(){}
    
    func save(){
        guard canSave else{
            return
        }
        
        //getting the current userID
        guard let uID = Auth.auth().currentUser?.uid else{
            return
        }
        
        
        
        //creating a model
        let newId = UUID().uuidString //unique new identifier
        
        let newItem = ToDoListItem(
            id: newId,
            title: title ,
            dureDate: dueDate.timeIntervalSince1970,
            createdDate: Date().timeIntervalSince1970,
            isDone: false)
        
        
        
        
        //saving model to database
        let db = Firestore.firestore()
        db.collection("users")
            .document(uID)
            .collection("todos")
            .document(newId)//whatever our new model ideas?
            .setData(newItem.asDictionary())
    }
    
    var canSave: Bool{
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else{
            return false
        }
        guard dueDate >= Date().addingTimeInterval(-86400) else{ //86400 is numbers of seconds in a day
            return false
        }
        return true
    }
    
}
