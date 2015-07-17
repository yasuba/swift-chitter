//
//  ParsedTweet.swift
//  Chitter
//
//  Created by Driver, Maya (UK - London) on 15/07/2015.
//  Copyright (c) 2015 Maya. All rights reserved.
//

import UIKit

class ParsedTweet: NSObject {
    var tweetText : String?
    var userName : String?
    var createdAt : String?
    var userAvatarURL : NSURL?
    
    init(tweetText: String?,
        userName: String?,
        createdAt: String?,
        userAvatarURL: NSURL?) {
            super.init()
            self.tweetText = tweetText
            self.userName = userName
            self.createdAt = createdAt
            self.userAvatarURL = userAvatarURL
    }
    
    override init() {
        super.init()
    }
   
}
