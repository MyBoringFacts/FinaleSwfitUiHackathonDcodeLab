
import SwiftUI
import FirebaseCore

@main
struct QuizAppApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        
        WindowGroup {
            MainView()
        }
    }
}
