//
//  ToDoListItemVIew.swift
//  ToDoList
//
//  Created by Sei Mouk on 26/8/23.
//

import SwiftUI

struct ToDoListItemVIew: View {
    let item: ToDoListItem
    @StateObject var viewModel = ToDoListItemViewViewModel()
    var body: some View {
        HStack{
            VStack(alignment: .leading ){
                Text(item.title)
                    .bold()
                    .font(.body)
                
                Text("\(Date(timeIntervalSince1970: item.dureDate).formatted(date: .abbreviated, time: .standard))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }.padding(.all, 5)
            Spacer()
            Button{
                viewModel.toggleIsDone(item: item)
            }label: {
                Image(systemName: item.isDone ? "checkmark.square.fill" : "square")
            }
        }
    }
}

struct ToDoListItemVIew_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListItemVIew(item: .init(id: "hello", title: "je;", dureDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: true))
    }
}
