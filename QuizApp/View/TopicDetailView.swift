//
//  TopicDetailView.swift
//  QuizApp
//
//  Created by Lu Maw on 02/09/2023.
//

import SwiftUI
import AVKit
import WebKit
import AVFoundation

var player2: AVAudioPlayer!

struct TopicDetailView: View {
    let topic: Topic
    
    let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "Primitive", ofType: "mp4")!))
    
    @State private var selectedAnswerIndex: Int? = nil
    @State private var isCorrect: Bool = false
    @State private var isPlaying: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text(topic.title)
                    .font(.title)
                    .padding(.horizontal)
                    .padding(.bottom, 5)
                Spacer()
                
                Button(action: {
                    isPlaying.toggle()
                    if isPlaying == true {
                        playSound()
                    } else {
                        pauseSound()
                    }
                }) {
                    Image(systemName: isPlaying ? "speaker.wave.3.fill" : "speaker")
                        .foregroundColor(Color.green)
                        .font(.largeTitle)
                        
                }
            }///
                
                Text(topic.description)
                    .font(.body)
                    .padding(.bottom, 0)
                    .padding(.horizontal)
            
                VideoView(videoID: topic.videoId)
                    .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height *  0.3)
                    .cornerRadius(12)
                    .padding(.horizontal, 5)
                
                Spacer()
            
        }
        .navigationBarTitle(topic.title, displayMode: .inline)
        .onDisappear {
            pauseSound()
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "lofi", withExtension: "mp3")
        player2 = try! AVAudioPlayer(contentsOf: url!)
        player2.play()
        isPlaying = true
    }
    
    func pauseSound() {
        if player2.isPlaying {
            player2.pause()
            isPlaying = false
        }
    }
}

struct TopicDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let exampleTopic = Topic(
            title: "Example Title",
            description: "Example Description",
            videoId: "exampleVideoID"
        )
        
        return TopicDetailView(topic: exampleTopic)
    }
}
