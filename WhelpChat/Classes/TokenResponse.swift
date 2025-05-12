//
//  LoadableResponse.swift
//  Pods-WhelpChatTest
//
//  Created by Rashad Shirizada on 28.04.22.
//

import Foundation

struct TokenResponse : Decodable {
    var token: String?
    var url: String?
    
    enum CodingKeys: String, CodingKey {
        case url
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.url = try? container.decode(String.self, forKey: .url)
        
        if let urlString = self.url,
           let url = URL(string: urlString),
           let components = URLComponents(url: url, resolvingAgainstBaseURL: false),
           let token = components.queryItems?.first(where: { $0.name == "token" })?.value {
            self.token = token
        } else {
            self.token = nil
        }
    }
    
    var loadableUrl: URL? {
        if let urlString = url, let directUrl = URL(string: urlString) {
            return directUrl
        }
        
        if let token = token {
            let fullPath = String(format: "%@%@", "https://widget.whelp.co/sdk/chat?token=", token)
            return URL(string: fullPath)
        }
        
        return nil
    }
}
