//
//  Promise.swift
//  Test
//
//  Created by Knik, Tron on 2/11/16.
//  Copyright © 2016 Knik, Tron. All rights reserved.
//

import Foundation

enum PromiseStatus {
    case Committed
    case Cancelled
    case Broken
    case Kept
    case Compromised
    case New
}

class Promise {
 
    private var _text: String = "A promise..."
    private var _dueDate: String?
    private var _status: PromiseStatus = PromiseStatus.New
    private var _emails: [String] = [String]()
    

    
    init(text: String ){
        self._text = text
    }
    
    convenience init(text: String, dueDate: String, status: PromiseStatus, email: String) {
        self.init(text: text)
        self._dueDate = dueDate
        self._status = status
        self._emails.append(email)
    }
    
    
    func addEmail(email: String) {
        _emails.append(email)
    }
    
    var dueDate : String {
        get {
            return self._dueDate!
        }
        set {
            self._dueDate = newValue
        }
    }
    
    var text : String {
        get {
            return self._text
        }
        set {
           self._text = newValue
        }
    }
    
    var status : PromiseStatus {
        get {
            return self._status
        }
        set {
            self._status = newValue
        }
    }
    
    var emails : [String] {
        get {
            return self._emails
        }
        
        set {
            self._emails = newValue
        }
    }
    
    
}


    
    
    
    
    
    
