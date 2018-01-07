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
    
    var value: Int
    var next: Node?
    var previous: Node?

    init(val: Int) {
        self.value = val
    }
}

class DoublyLinkedList {

    var head: Node?
    var tail: Node?
    var isEmpty: Bool
    var first: Node?
    var last: Node?
    
    func append(value: Int) {
        
    }

    
    func remove(at index: Int) {
        
    }

    
    func node(at index: Int) -> Node? {
        return nil
    }

}



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
