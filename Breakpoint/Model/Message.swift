//
//  Message.swift
//  Breakpoint
//
//  Created by Marcus Ng on 8/28/17.
//  Copyright © 2017 Marcus Ng. All rights reserved.
//

import Foundation

class Message {
    
    private var _content: String
    private var _senderId: String
    
    var content: String {
        return _content
    }
    
    var senderId: String {
        return _senderId
    }
    
    init(content: String, senderId: String) {
        self._content = content
        self._senderId = senderId
    }
    
}
