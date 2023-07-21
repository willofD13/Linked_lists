class Node
    attr_accessor :value, :next_node

    def initialize(value)
        @value = value
        @next_node = nil
    end 
end

class LinkedList
    attr_accessor :head

    def initialize
        @head = nil 
    end

    def prepend(value)
        @head = Node.new(value)
    end
end

list = LinkedList.new
list.prepend(20)
p list
