//
//  ToDoListViewModel.swift
//  ToDoList
//
//  Created by Sei Mouk on 26/8/23.
//
import FirebaseFirestoreSwift
import FirebaseFirestore
import Foundation
class ToDoListViewViewModel: ObservableObject{
    @Published var showingNewItemView = false
    private let userId: String
    
    init(userId: String ){
        self.userId = userId
        
    }
    /// delete to do list item
    /// - parameter id : id description
    func delete(id : String){
        
        let db=Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
