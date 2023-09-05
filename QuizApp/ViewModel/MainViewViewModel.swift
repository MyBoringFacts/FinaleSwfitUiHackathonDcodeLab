//
//  MainViewModel.swift
//  ToDoList
//
//  Created by Sei Mouk on 26/8/23.
//
import FirebaseAuth
import Foundation
class MainViewViewModel : ObservableObject{
    @Published var currentUserId: String = ""                                           //current user ID
    
    private var  handler: AuthStateDidChangeListenerHandle?                             //to keep track of the observer that listen for changes in users auth state
    init()
    {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self]_, user in    // to observe from firebase when the current user changes
            //this block code run when the user auth changes
            //published will be triggered when a user signed in out out
            
            DispatchQueue.main.async {                                                  //making sure UI are performed on main thread
                self?.currentUserId = user?.uid ?? ""                                    // when someone signed in , then thats their ID, otherwise --> its none
            }
        }
    }
    
    
    //to tell if a user is currently signed im
    public var isSignedIn : Bool{
            return Auth.auth().currentUser != nil
    }
}
