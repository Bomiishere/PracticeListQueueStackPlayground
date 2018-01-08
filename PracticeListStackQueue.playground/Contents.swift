// 卍Data Structue Practice卍() -> 乂List乂, 屮Queue屮 and ㊣Stack㊣
// By Oo煞氣a毅oO & ◢▆▄▃狂傲魔幻刀劍神鬼孤煞武聖狼虎皇平▃▄▇◣


// DEFINITION - Linked List: a linked list is a linear collection of data elements, in which linear order is not given by their physical placement in memory. Instead, each element points to the next. It is a data structure consisting of a group of nodes which together represent a sequence.

// 1. Claim a class named "Node" with Int, it contains three properties: value, previous and next.
// --- (It contains a pointer to the previous node, so it is a doubly linked list) ---
// 2. Claim a class named "DoublyLinkedList", it contains five properties: head: Node?, tail: Node?, isEmpty: Bool, first: Node?, last: Node? .
// 3. Create a method "append(value: Int)" for appending a new element after the tail of the linked list.
// 4. Create a method "remove(at index: Int)" for removing certain element from the linked list.
// 5. Create a method "node(at index: Int)" for looking up an element in certain index the linked list.
// 6.(Optional) Make LinkedList and Node generic classes.

class Node {
    
    var value: Int?
    var next: Node?
    var previous: Node?

}

class DoublyLinkedList {

    var first: Node?
    var last: Node?
    
    var isEmpty: Bool {
        return self.first == nil || self.last == nil
    }
    
    func append(value: Int) {
        
        let addNode = Node()
        addNode.value = value
        
        if first == nil {
            
            first = addNode
            last = first
            
        } else {
            
            last?.next = addNode
            addNode.previous = last
            last = addNode
        }
    }

    func remove(at index: Int) {
        
        if first == nil {
            return
            
        } else {
            
            var checkNode: Node? = first
            var indexCount = 0
            
            while checkNode != nil {
                
                if indexCount < index {
                    
                    indexCount += 1
                    
                } else if (indexCount == index) {
                    //found it !
                    if let nextNode = checkNode?.next {
                        
                        nextNode.previous = checkNode?.previous
                        
                    } else {
                        //last one
                        last = checkNode?.previous
                        last?.next = nil
                        break
                    }
                    if let previousNode = checkNode?.previous {
                        
                        previousNode.next = checkNode?.next
                        
                    } else {
                        // first one
                        first = first?.next
                        first?.previous = nil
                    }
                    indexCount += 1
                    break
                }
                
                checkNode = checkNode?.next
            }
            
        }
        
    }
    
    func node(at index: Int) -> Node? {
        
        if first == nil {
        
            return nil
            
        } else {
            
            var checkNode: Node? = first
            var indexCount = 0
            
            while checkNode != nil {
                
                if indexCount < index {
                    
                    indexCount += 1
                    
                } else if (indexCount == index) {
                    //found it !
                    return checkNode
                }
                
                checkNode = checkNode?.next
            }
            
        }
        return nil
    }

}

/* Test DoublyLinkedList Methos */
let dlList = DoublyLinkedList()

// Condition 1 - Append
dlList.append(value: 1)
dlList.append(value: 2)
dlList.append(value: 3)
dlList.append(value: 4)
print("==========================================")
print("==== \(String(describing: dlList.first?.previous?.value)) ==============")
print("==== \(String(describing: dlList.first?.value)) ==============")
print("==== \(String(describing: dlList.first?.next?.value)) ==============")
print("==== \(String(describing: dlList.last?.previous?.value)) ==============")
print("==== \(String(describing: dlList.last?.value)) ==============")
print("==== \(String(describing: dlList.last?.next?.value)) ==============")

// Condition 2 - Remove
dlList.remove(at: 3)

print("==========================================")
print("remove an 3rd node")
//print("==== First  pre val:\(String(describing: dlList.first?.previous?.value)) ==============")
//print("==== First      val:\(String(describing: dlList.first?.value)) ==============")
//print("==== First next val:\(String(describing: dlList.first?.next?.value)) ==============")
//print("==== Last   pre val:\(String(describing: dlList.last?.previous?.value)) ==============")
//print("==== Last       val:\(String(describing: dlList.last?.value)) ==============")
//print("==== Last  next val:\(String(describing: dlList.last?.next?.value)) ==============")
print("==========================================")

// Condition 3 - Selected Node
print("==== Selected index val:\(String(describing: dlList.node(at: 0)?.value)) ==============")
print("==== Selected index val:\(String(describing: dlList.node(at: 1)?.value)) ==============")
print("==== Selected index val:\(String(describing: dlList.node(at: 2)?.value)) ==============")
print("==== Selected index val:\(String(describing: dlList.node(at: 3)?.value)) ==============")
print("==========================================")


// DEFINITION - Queue: an abstract data type or collection in which the entities in the collection are kept in order and the principle (or only) operations on the collection are the addition of entities to the rear terminal position, known as enqueue, and removal of entities from the front terminal position, known as dequeue. This makes the queue a First-In-First-Out (FIFO) data structure.

// NOTE: Please use the Node class from Doubly Linked List practice.
// 1. Claim a method "enqueue(value: Int)" for appending a new element after the tail of the queue.
// 2. Claim a method "dequeue()" for removing the head of the queue.
// 3. Create a method "remove(at index: Int)" for removing certain element from the queue.
// 4. Create a method "node(at index: Int)" for looking up an element in certain index the queue.
// 5. (Optional) Make it a generic Queue class.

class Queue {
    
    func enqueue(value: Int) {

    }

    func dequeue() {
        
    }

    func remove(at index: Int) {
        
    }

    func node(at index: Int) {
        
    }

}



// DEFINITION - Stack: an abstract data type that serves as a collection of elements, with two principal operations: push, which adds an element to the collection, and pop, which removes the most recently added element that was not yet removed. The order in which elements come off a stack gives rise to its alternative name, LIFO (last in, first out).

// NOTE: Please use the Node class from Doubly Linked List practice.
// 1. Claim a method "push(value: Int)" for appending a new element after the tail of the stack.
// 2. Claim a method "pop()" for removing the tail of the stack.
// 3. Create a method "remove(at index: Int)" for removing certain element from the stack.
// 4. Create a method "node(at index: Int)" for looking up an element in certain index of the stack.
// 5. (Optional) Make it a generic Stack class.

class Stack {

    func push(value: Int) {
        
    }
    
    func pop() {
        
    }
    
    func remove(at index: Int) {
        
    }
    
    func node(at index: Int) {
        
    }

}
