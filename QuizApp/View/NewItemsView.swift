//
//  NewItemsView.swift
//  ToDoList
//
//  Created by Sei Mouk on 26/8/23.
//

import SwiftUI

struct NewItemsView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented : Bool
    
    
    
    var body: some View {
        VStack{
//            Text("Add a new Item").bold()
//                .font(.system(size: 32)).padding(.top, 75)
            Text(" ")
            Form{
                TextField("TITLE",text: $viewModel.title).textFieldStyle(DefaultTextFieldStyle()).font(.system(size: 40)).padding(.top,30)
                
                DatePicker("Due Date",selection: $viewModel.dueDate).datePickerStyle(GraphicalDatePickerStyle())
                
                TDLButton(title: "Create", backgroundcolor: .pink) {
                    
                    if viewModel.canSave{
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                        
                }
            }.alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Error"),message: Text("Please fill in all the fields and select due date is today or upcoming date"))
            }
        }
    }
}

struct NewItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemsView(newItemPresented: Binding(get: {
            return true
        }, set: {
            _ in
        }))
    }
}
