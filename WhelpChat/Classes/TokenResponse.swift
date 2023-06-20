//
//  LoadableResponse.swift
//  Pods-WhelpChatTest
//
//  Created by Rashad Shirizada on 28.04.22.
//

import Foundation

struct TokenResponse : Decodable {
    var token: String?
    
    var loadableUrl: URL? {
        if let token = token {
            let fullPath = String(format: "%@%@", "https://widget.whelp.co/sdk/chat?token=",token)
            
            return URL(string: fullPath)
        }
        return nil
    }
}
