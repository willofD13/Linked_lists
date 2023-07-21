class Node
    attr_accessor :value, :next

    def initialize(value)
        @value = value
        @next = nil 
    end 
end

class LinkedList

    def initialize(value)
        @head = Node.new(value)
    end
