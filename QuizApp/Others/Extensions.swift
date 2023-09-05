//
//  Extensions.swift
//  TriviaGame
//
//  Created by Stephanie Diep on 2021-12-17.
//

import Foundation
import SwiftUI

// Custom modifier to call this one-liner instead of adding three modifiers every time we create a title Text.
extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color.black
            )
    }
}
import Foundation
import UIKit

extension Encodable{
    func asDictionary() -> [String : Any]{
        guard let data = try?  JSONEncoder().encode (self) else{
            return [:]
        }
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String : Any]
            return json ?? [:]
            
        }catch {
            return [:]
        }
    }
    
}
