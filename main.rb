require 'pry-byebug'
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


    def find(value)
        node = head
        return node if node.value == value
            
        while node.next !=nil 
          node = node.next
          if node.value == value 
            return node
          else 
            return false
          end 
        end 
    
    end

    def deletion(value)
       node = head 
       if node.value == value 
        head = node.next 
       else 
            while node.next.value != value && node.next != nil 
                if node.next.value == value || node.next == nil 
                    node.next = node.next.next 
                else 
                    node = node.next 
                end 
            end
            node.next = node.next.next
        end
    end

    def size
       # binding.pry
        node = head 
        number = 1
        while node.next != nil 
            node = node.next 
            number += 1 
        end 
        puts number
    end
        
    def first 
        first = head.dup
        first.next = nil
        p first
    end

end

list = LinkedList.new(2)
list.append(10)
list.append(20)
list.first

