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
        node_to_add = head 

        while node_to_add.next !=nil 
            node_to_add = node_to_add.next 
        end 

        node_to_add.next = Node.new(value)
    end


    def find(value)
        return head if head.value == value
        node_to_find = head
            
        while node_to_find.next !=nil 
          node_to_find = node_to_find.next
          if node_to_find.value == value 
            return node_to_find
          else 
            return false
          end 
        end 
    
    end

    def deletion(value)
       node_to_delete = head 
       if node_to_delete.value == value 
        head = node_to_delete.next 
       else 
            while node_to_delete.next.value != value && node_to_delete.next != nil 
                if node_to_delete.next.value == value || node_to_delete.next == nil 
                    node_to_delete.next = node_to_deletee.next.next 
                else 
                    node_to_delete = node_to_delete.next 
                end 
            end
            node_to_delete.next = node_to_delete.next.next
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
        first_node = head.dup
        first_node.next = nil
        p first_node
    end

    def to_s
        result = []
        node_to_print = @head
      
        while node_to_print.next != nil 
          result << node_to_print.value
          node_to_print = node_to_print.next
        end
        result << node_to_print.value
        return "#{result}"
      end
end

list = LinkedList.new(2)
list.append(10)
list.append(20)
puts list

