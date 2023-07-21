class Node
    attr_accessor :value, :next

    def initialize(value)
        @value = value
        @next = nil
    end 
end

class LinkedList
    attr_accessor :head

    def initialize(value)
        @head = Node.new(value) 
    end

    def append(value)
        node = head 

        while node.next !=nil 
            node = node.next 
        end 

        node.next = Node.new(value)
    end

end

list = LinkedList.new(2)
list.append(10)
list.append(20)
p list
