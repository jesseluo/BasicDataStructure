//
//  SimpleStack.swift
//  BasicDataStructure
//
//  Created by Jesse Luo on 15/9/13.
//  Copyright © 2015年 Jesse Luo. All rights reserved.
//

import Foundation

class SimpleStack<T>: NSObject, StackProtocol {
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
    
    func popAll() -> [T] {
        let output:[T] = stack.reverse()
        clear()
        return output
    }
    
    func clear() {
        stack.removeAll()
    }
}