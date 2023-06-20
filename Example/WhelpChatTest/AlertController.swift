//
//  AlertController.swift
//  WhelpChatTest
//
//  Created by Rashad Shirizada on 03.05.22.
//

import Foundation
import UIKit

class AlertController {
    
    static func showError(message: String, in viewController: UIViewController) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in
            DispatchQueue.main.async {
                alertController.dismiss(animated: true)
            }
        }))
        viewController.present(alertController, animated: true)
    }
}
