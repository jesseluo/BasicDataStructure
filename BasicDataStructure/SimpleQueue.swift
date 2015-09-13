//
//  SimpleQueue.swift
//  BasicDataStructure
//
//  Created by Jesse Luo on 15/9/13.
//  Copyright © 2015年 Jesse Luo. All rights reserved.
//

import Foundation

class SimpleQueue<T>: NSObject, QueueProtocol {
    private var queue = [T]()
    
    var count: Int {
        get {
            return queue.count
        }
    }
    
    var isEmpty: Bool {
        get {
            return queue.isEmpty
        }
    }
    
    func enqueue(element: T) {
        queue.append(element)
    }
    
    func dequeue() -> T? {
        return queue.count > 0 ? queue.removeAtIndex(0) : nil
    }
    
    func dequeueAll() -> [T] {
        let output = queue
        queue = [T]()
        return output
    }
    
    func clear() {
        queue.removeAll()
    }
}
