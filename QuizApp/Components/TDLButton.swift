////
////  TDLButton.swift
////  ToDoList
////
////  Created by Sei Mouk on 27/8/23.
////
//
//import SwiftUI
//
//struct TDLButton: View {
//    let title: String
//    let backgroundcolor: Color
//    let action: () -> Void
//
//    var body: some View {
//        VStack{
//            Button{
//                action()
//            }label:{
//                ZStack{
//                    RoundedRectangle(cornerRadius: 10)
//                        .foregroundColor(backgroundcolor)
//                    Text(title).foregroundColor( Color.white).bold()
//                }
//            }
//        }.padding()
//    }
//}
//
//struct TDLButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TDLButton(title: "Value",backgroundcolor: .cyan){
//            //action
//        }
//
//    }
//
//}
import SwiftUI

struct TDLButton: View {
    let title: String
    let backgroundcolor: Color
    let action: () -> Void
    
    @State private var animate = false
    
    var body: some View {
        VStack {
            Button(action: {
                action()
            }) {
                Text(title)
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(animate ? backgroundcolor : Color.secondary)
                    .cornerRadius(10)
            }
            .padding(.horizontal, animate ? 30 : 50)
            .shadow(
                color: animate ? backgroundcolor.opacity(0.7) : Color.accentColor.opacity(0.7),
                radius: animate ? 30 : 10,
                x: 0.0,
                y: animate ? 30 : 20
            )
            .scaleEffect(animate ? 1.1 : 1.0)
            .offset(y: animate ? -7 : 0)
            .onAppear(perform: addAnimation)
        }.padding(.all,30)
    }

    func addAnimation() {
        /// Make sure "animate" is not true
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
}

struct TDLButton_Previews: PreviewProvider {
    static var previews: some View {
        TDLButton(title: "Value", backgroundcolor: .cyan) {
            // Action
        }
    }
}
