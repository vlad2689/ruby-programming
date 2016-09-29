class Node
	def initialize(value=nil, next_node=nil)	
		@value = value
		@next = next_node
	end

	def value
		@value
	end

	def next
		@next
	end

	def setNext(n)
		@next = n
	end
end

class LinkedList
	
	def initialize
		@size = 0
		@head= nil
	end

	def append(n)
		if @size == 0
			@head = n
		else
			working_node = @head
			while working_node.next != nil
				working_node = working_node.next
			end

			working_node.setNext(n)
		end

		@size += 1
	end

	def prepend(n)
		if @size == 0
			@head = n
		else
			n.setNext(@head);
			@head = n;
		end

		@size += 1
	end

	def size
		@size
	end

	def head
		@head
	end

	def tail
		if @size == 0
			return @head
		else
			working_node = @head
			while working_node.next != nil				
				working_node = working_node.next
			end

			@size -= 1

			return working_node
		end	
	end

	def at(index)
		
	end
	
	def pop
		if @size == 0
			return
		elsif @size == 1
			@head = nil
			@size = 0
		else
			working_node = @head
			while working_node.next != nil

				prev = working_node
				working_node = working_node.next
				if working_node.next == nil
					prev.next = nil
					size -= 1
					return
				end
			end
		end
	end

	def contains?(value)
		if @size == 0 
			return false
		else
			working_node = @head
			while @working_node.next != nil
				if working_node.value == value || working_node.next == value
					return true
				end
				working_node = working_node.next
			end
		end
		return false
	end

	def find(data)
	end

	def to_s
	end

	def insert_at(index)
	end

	def remove_at(index)
	end
end

linked_list = LinkedList.new
linked_list.append(Node.new(1))
puts linked_list.tail.value
linked_list.prepend(Node.new(3))
puts linked_list.head.value
linked_list.append(Node.new(5))
puts linked_list.tail.value
linked_list.pop
puts linked_list.tail.value