//
//  Stack.swift
//  BaseDataStructure
//
//  Created by Jesse Luo on 15/7/26.
//  Copyright © 2015年 JesseLuo. All rights reserved.
//

import Foundation

class Stack<T>: NSObject {
    private var stack = [T]()
    
    var count: Int {
        get {
            return stack.count;
        }
    }
    
    var isEmpty: Bool {
        get {
            return stack.isEmpty;
        }
    }
    
    func push(element: T) {
        stack.append(element)
    }

    func pop() -> T? {
        return stack.count > 0 ? stack.removeLast() : nil
    }
    
    func clear() {
        stack.removeAll()
    }
}
