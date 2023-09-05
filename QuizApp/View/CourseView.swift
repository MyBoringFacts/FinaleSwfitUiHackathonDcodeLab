//
//  CourseView.swift
//  QuizApp
//
//  Created by Lu Maw on 02/09/2023.
//
//COURSE VIEW FILE
//import SwiftUI
//import AVKit
//import WebKit
//import AVFoundation
//
//import FirebaseFirestoreSwift
//import SwiftUI
//
//struct CourseView: View {
//    @StateObject var viewModel : CourseViewViewModel
//    @State var showSheet : Bool = false
//
//
//    private let userId: String
//    init(userId: String){
//        self.userId = userId
//
//        self._viewModel = StateObject(wrappedValue: CourseViewViewModel(userId: userId))
//    }
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                Text("Java Beginner Course")
//                    .font(.largeTitle)
//                Text("This Java course will introduce key concepts in programming to help you form a solid foundation around universal coding principles like variables and data structures.")
//                                   .font(.subheadline)
//                                   .foregroundColor(.gray)
//               //                    .padding()
//                                   .multilineTextAlignment(.center)
//                                   .padding(5)
//                                   .padding(.bottom,5)
//
//
//                               Button(action: {
//                                   showSheet.toggle()
//                               }, label:{
//                                   Text("About This Course")
//                                       .foregroundColor(.green)
//                                       .font(.headline)
//                                       .padding(-5)
//
//                               })
//
//
//
//                List {
//                    ForEach(0..<CourseDataService.topics.count, id: \.self) { index in
//                        NavigationLink(
//                            destination: TopicDetailView(
//                                topic: CourseDataService.topics[index]
//                            )
//                        ) {
//                            Text(CourseDataService.topics[index].title)
//                        }
//                    }
//                }
//            }
//
//            .sheet(isPresented: $showSheet, content: {SecondScreen()})
//        }
//
//        .navigationTitle("JAVA")
//
//
//    }
//
//}
//
//struct CourseView_Previews: PreviewProvider {
//    static var previews: some View {
//        CourseView(userId: "cc721nt3T7Nzd8mz4RvtQw9htNy2")
//    }
//}
//
//
////import SwiftUI
////import AVKit
////import WebKit
////import AVFoundation
////
////import FirebaseFirestoreSwift
////import SwiftUI
////
////struct CourseView: View {
////    @StateObject var viewModel : CourseViewViewModel
////
////    @State var showSheet: Bool = false
////    private let userId: String
////    init(userId: String){
////        self.userId = userId
////        self._viewModel = StateObject(wrappedValue: CourseViewViewModel(userId: userId))
////    }
////
////    var body: some View {
////        NavigationView {
////            VStack {
////
////                    Text("Java Beginner Course")
////                    .font(.largeTitle).bold()
//////                    Image("java")
//////                                .resizable()
//////                                .frame(width: 54.0, height: 46)
//////                                .scaledToFit()
////
////
////                Text("This Java course will introduce key concepts in programming to help you form a solid foundation around universal coding principles like variables and data structures.")
////                    .font(.subheadline)
////                    .foregroundColor(.gray)
//////                    .padding()
////                    .multilineTextAlignment(.center)
////                    .padding(5)
////                    .padding(.bottom,5)
////
////
////                Button(action: {
////                    showSheet.toggle()
////                }, label:{
////                    Text("About This Course")
////                        .foregroundColor(.green)
////                        .font(.headline)
////                        .padding(-5)
////
////                })
////
////                List {
////                    ForEach(0..<CourseDataService.topics.count, id: \.self) { index in
////                        NavigationLink(
////                            destination: TopicDetailView(
////                                topic: CourseDataService.topics[index]
////                            )
////                        ) {
////                            Text(CourseDataService.topics[index].title)
////                        }
////                    }
////                }
////
////                .sheet(isPresented: $showSheet, content: {SecondScreen()})
////
////
////
////            }
////
////        }
////
////
////    }
////}
//
//struct SecondScreen: View{
//    //this will know that you are in a sheet and can be used to dismiss from sheet
//
//
//
////FYI: @Enviroment(\.presentationMode) will be deprecated, use this instead: @Enviroment(\.dismiss) var dismissScreen and you will call it in the action of your button as a function, like this: dismissScreen().
//
//
//    @Environment(\.presentationMode) var presentationMode
//
//        var body: some View {
//            ZStack(alignment: .topLeading) {
//                Color(.systemBackground) // Use the system background color for the white background
//                    .edgesIgnoringSafeArea(.all)
//
//                Button(action: {
//                    presentationMode.wrappedValue.dismiss()
//                }) {
//                    Image(systemName: "xmark")
//                        .foregroundColor(.black)
//                        .font(.largeTitle)
//                        .padding(20)
//                }
//
//            VStack{
//                Spacer()
//                    .frame(height: 40)
//                Group{
//                    Text("WHAT YOU'LL GAIN")
//                        .font(.title)
//                        .foregroundColor(.black)
//                        .bold()
//                    Spacer()
//                        .frame(height: 5)
//                    Text("""
//                         You will have a better understanding of Object-Oriented programming halfway through the course, and we will slowly ease into more nuanced topics in Java which pertain to its unique static syntax, such as defining abstract classes, inheritance, and polymorphism.
//                         """)
//                    .font(.body)
//                    .foregroundColor(.black)
//                }
//                Group{
//                    Spacer()
//                        .frame(height: 40)
//                    Text("ADDITIONAL INFO")
//                        .font(.title)
//                        .foregroundColor(.black)
//                        .bold()
//                    Spacer()
//                        .frame(height: 5)
//                    Text("""
//                         The amount of time this course takes is contingent upon your experience level and how much time you dedicate to the course. We recommend you time yourself during exercises and revisit each topic periodically to boost long term memory of the content. Additionally, you should pursue independent projects in Java and do external research on any misunderstandings in order to gauge a better general proficiency of the language.
//                         """)
//                    .font(.body)
//                    .foregroundColor(.black)
//                }
//
//                Group{
//                    Spacer()
//                        .frame(height: 40)
//                    Text("TOPIC LIST")
//                        .font(.title)
//                        .foregroundColor(.black)
//                        .bold()
//                    Spacer()
//                        .frame(height: 5)
//                    Text("""
//                         As you progress through the course, the following topics will be available to you for your reference. We recommend you go in order to build a solid foundation for each topic but you are welcome to skip ahead if you believe you are well familiar with the topic.
//                         """)
//                    .font(.body)
//                    .foregroundColor(.black)
//                }
//
//
//            }
//            .padding(20)
//        }
//    }
//}
//
////struct CourseView_Previews: PreviewProvider {
////    static var previews: some View {
////        CourseView(userId: "cc721nt3T7Nzd8mz4RvtQw9htNy2")
////    }
////}
import SwiftUI
import AVKit
import WebKit
import AVFoundation

import FirebaseFirestoreSwift
import SwiftUI

struct CourseView: View {
    @StateObject var viewModel : CourseViewViewModel
    @State var showSheet: Bool = false
    private let userId: String
    init(userId: String){
        self.userId = userId
        self._viewModel = StateObject(wrappedValue: CourseViewViewModel(userId: userId))
    }
    
    var body: some View {
        ZStack{
            NavigationView {
                VStack{
                    HStack{
                        Text("Java Beginner Course")
                            .font(.largeTitle)
                        Image("java2")
                                    .resizable()
                                    .frame(width: 54.0, height: 46)
                                    .scaledToFit()
                    }
                    
                    Text("This Java course will introduce key concepts in programming to help you form a solid foundation around universal coding principles like variables and data structures.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    
                    Button(action: {
                        showSheet.toggle()
                    }, label:{
                        Text("About This Course")
                            .foregroundColor(.green)
                            .font(.headline)
                            .padding(-5)
                    })
                    
                    List {
                        ForEach(0..<CourseDataService.topics.count, id: \.self) { index in
                            NavigationLink(
                                destination: TopicDetailView(
                                    topic: CourseDataService.topics[index]
                                )
                            ) {
                                Text(CourseDataService.topics[index].title)
                            }
                        }
                    }
                    .sheet(isPresented: $showSheet, content: {SecondScreen()})
                    .zIndex(-1)
                    
              
                    
                }

            }
        }
        


    }
}

struct SecondScreen: View{
    //this will know that you are in a sheet and can be used to dismiss from sheet
    
    
    
//FYI: @Enviroment(\.presentationMode) will be deprecated, use this instead: @Enviroment(\.dismiss) var dismissScreen and you will call it in the action of your button as a function, like this: dismissScreen().
    
    
    @Environment(\.presentationMode) var presentationMode

        var body: some View {
            ZStack(alignment: .topLeading){
                Color(.systemBackground) // Use the system background color for the white background
                    //.edgesIgnoringSafeArea(.all)

                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                        .foregroundColor(Color("AccentColor2"))
                        .font(.largeTitle)
                        .padding(20)
                }
            
            VStack{
                Spacer()
                    .frame(height: 40)
                Group{
                    Text("WHAT YOU'LL GAIN")
                        .font(.title)
                        .foregroundColor(Color("AccentColor2"))
                        .bold()
                    Spacer()
                        .frame(height: 5)
                    Text("""
                         You will have a better understanding of Object-Oriented programming halfway through the course, and we will slowly ease into more nuanced topics in Java which pertain to its unique static syntax, such as defining abstract classes, inheritance, and polymorphism.
                         """)
                    .font(.body)
                    .foregroundColor(Color("AccentColor2"))
                }
                Group{
                    Spacer()
                        .frame(height: 40)
                    Text("ADDITIONAL INFO")
                        .font(.title)
                        .foregroundColor(Color("AccentColor2"))
                        .bold()
                    Spacer()
                        .frame(height: 5)
                    Text("""
                         The amount of time this course takes is contingent upon your experience level and how much time you dedicate to the course. We recommend you time yourself during exercises and revisit each topic periodically to boost long term memory of the content. Additionally, you should pursue independent projects in Java and do external research on any misunderstandings in order to gauge a better general proficiency of the language.
                         """)
                    .font(.body)
                    .foregroundColor(Color("AccentColor2"))
                }
                
                Group{
                    Spacer()
                        .frame(height: 40)
                    Text("TOPIC LIST")
                        .font(.title)
                        .foregroundColor(Color("AccentColor2"))
                        .bold()
                    Spacer()
                        .frame(height: 5)
                    Text("""
                         As you progress through the course, the following topics will be available to you for your reference. We recommend you go in order to build a solid foundation for each topic but you are welcome to skip ahead if you believe you are well familiar with the topic.
                         """)
                    .font(.body)
                    .foregroundColor(Color("AccentColor2"))
                }
                
               
            }
            .padding(20)
        }
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(userId: "cc721nt3T7Nzd8mz4RvtQw9htNy2")
    }
}

