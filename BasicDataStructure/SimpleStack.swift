//
//  SimpleStack.swift
//  BasicDataStructure
//
//  Created by Jesse Luo on 15/9/13.
//  Copyright © 2015年 Jesse Luo. All rights reserved.
//

import Foundation

public class SimpleStack<T>: NSObject, StackProtocol {
    private var stack: [T]

    public override init() {
        stack = [T]()
    }
    
    public var count: Int {
        get {
            return stack.count
        }
    }
    
    public var isEmpty: Bool {
        get {
            return stack.isEmpty
        }
    }
    
    public func push(element: T) {
        stack.append(element)
    }
    
    public func pop() -> T? {
        return stack.count > 0 ? stack.removeLast() : nil
    }
    
    public func popAll() -> [T] {
        let output:[T] = stack.reverse()
        clear()
        return output
    }
    
    public func clear() {
        stack.removeAll()
    }
}