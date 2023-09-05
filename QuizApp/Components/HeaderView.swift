//
//  HeaderView.swift
//  ToDoList
//
//  Created by Sei Mouk on 26/8/23.
//
import FirebaseFirestore
import SwiftUI

struct HeaderView: View {
    let title : String
    let subtitle : String
    let angle : Double
    let backgroundcolor : Color
    var body: some View {
        ZStack{
       

            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundcolor)
                .rotationEffect(  Angle(degrees: angle))

            
            VStack{
                Text(title).font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text (subtitle).font(.system(size: 30))
                    .foregroundColor(Color.white)
                    .italic()
            }.padding(.top,80)
        }
        .frame(width:UIScreen.main.bounds.width * 10,height: 400)
        .offset(y: -150)// offset is for moving the things up /( the whole blue thing)\
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title",
                   subtitle: "Subtitle",
                   angle: 15,
                   backgroundcolor: .blue
        )
    }
}
