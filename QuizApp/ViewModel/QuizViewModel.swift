//
//  QuizViewModel.swift
//  QuizApp
//
//  Created by Lu Maw on 02/09/2023.
//

///quiz view model
import SwiftUI
import WebKit

struct QuizViewModel: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
struct QuizViewModel_Previews: PreviewProvider {
    static var previews: some View {
        QuizViewModel()
    }
}

struct VideoView: UIViewRepresentable{
    let videoID: String
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)") else {return}
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}

