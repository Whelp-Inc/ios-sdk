//
//  ChatDelegate.swift
//  WhelpChat
//
//  Created by Rashad Shirizada on 03.05.22.
//

import Foundation

public protocol WhelpChatDelegate {
    func didStartLoad()
    func onError(error: Error)
    func didFinishLoad()
}
