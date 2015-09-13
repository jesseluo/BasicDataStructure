//
//  SimpleQueue.swift
//  BasicDataStructure
//
//  Created by Jesse Luo on 15/9/13.
//  Copyright © 2015年 Jesse Luo. All rights reserved.
//

import Foundation

public class SimpleQueue<T>: NSObject, QueueProtocol {
    private var queue: [T]

    public override init() {
        queue = [T]()
    }
    
    public var count: Int {
        get {
            return queue.count
        }
    }
    
    public var isEmpty: Bool {
        get {
            return queue.isEmpty
        }
    }
    
    public func enqueue(element: T) {
        queue.append(element)
    }
    
    public func dequeue() -> T? {
        return queue.count > 0 ? queue.removeAtIndex(0) : nil
    }
    
    public func dequeueAll() -> [T] {
        let output = queue
        queue = [T]()
        return output
    }
    
    public func clear() {
        queue.removeAll()
    }
}
