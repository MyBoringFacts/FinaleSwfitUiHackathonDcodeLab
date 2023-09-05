//
//  ToDoListsView.swift
//  ToDoList
//
//  Created by Sei Mouk on 26/8/23.
//
import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListsView: View {
    @StateObject var viewModel : ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    private let userId: String
    init(userId: String){
        self.userId = userId
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
    }
    
    var body: some View {
        NavigationView {
            VStack{
                List(items){
                    item in
                    ToDoListItemVIew(item: item)
                        .swipeActions(content: {
                            Button{
                                viewModel.delete(id: item.id)
                            }label: {
                                Text("Delete")
                                    
                            }.tint(.red)//to make the red effect when swiping
                        })
                }
            }.navigationTitle("To Do List")
                .toolbar {
                    Button{
                        //Action
                        viewModel.showingNewItemView = true
                        
                    }label: {
                        Image(systemName: "plus")
                }
            }
                .sheet(isPresented: $viewModel.showingNewItemView) {
                    NewItemsView(newItemPresented: $viewModel.showingNewItemView)
                }
        }
    }
}

struct ToDoListsView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListsView(userId: "cc721nt3T7Nzd8mz4RvtQw9htNy2")
    }
}
