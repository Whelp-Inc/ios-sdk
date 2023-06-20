# WhelpChat

[![CI Status](https://img.shields.io/travis/Rashad Shirizada/WhelpChat.svg?style=flat)](https://travis-ci.org/Rashad Shirizada/WhelpChat)
[![Version](https://img.shields.io/cocoapods/v/WhelpChat.svg?style=flat)](https://cocoapods.org/pods/WhelpChat)
[![License](https://img.shields.io/cocoapods/l/WhelpChat.svg?style=flat)](https://cocoapods.org/pods/WhelpChat)
[![Platform](https://img.shields.io/cocoapods/p/WhelpChat.svg?style=flat)](https://cocoapods.org/pods/WhelpChat)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

WhelpChat is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'WhelpChat'
```
## Configuration
You can configure details in your AppDelegate.swift

		import WhelpChat

        let params: [String:Any] = [
            "language": "en", // language code, default is auto
            "contact": [ // set contacts default and custom fields
                "email": "YOUR_EMAIL",
                "fullname": "YOUR_FULLNAME",
                "phone": "YOUR_PHONE"
                       ]
        ]
        
        let config = ChatConfiguration(apiKey: "YOUR_API_KEY", appId: "YOUR_APP_ID", params: params)
        ChatManager.configuration = config
        
## How to get YOUR_API_KEY and YOUR_APP_ID
 1. Sign in to the [Whelp Web platform](https://whelp.co) and go to the [Apps -> Livechat](https://whelp.co) app page. 
 2. Click on Install button, if you didn't installed livechat previously, if yes skip this step
 3. Next click Configure then SDK.
 4. Copy the App ID and API key.
 
 
## Usage
When you would like to open ChatController, you can use following.

    if let chatController = ChatManager.chatController {
            chatController.delegate = self
            self.navigationController?.pushViewController(chatController, animated: true)
            
        }

## Author

Rashad Shirizada, rashad.shirizada@gmail.com

## License

WhelpChat is available under the MIT license. See the LICENSE file for more info.
