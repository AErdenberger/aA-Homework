class Stack
  def initialize
    @stack = []
  end

  def push(el)
    # adds an element to the stack
    @stack.unshift(el)
  end

  def pop
    # removes one element from the stack
    @stack.shift
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    @stack[0]
  end
end

class Queue
    def initialize
        @queue = []
    end

    def enqueue(ele)
        @queue << ele
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end
end

class Map 
    def initialize
        @map = []
    end

    def set(key, value)
        unless self.map_include?(key)
            @map << [key, value]
        else
            @map[get(key)][-1] = value
        end
    end

    def get(key)
        @map.each_with_index do [key_value, idx]
            return idx if key_value.include?(key)
        end
    end

    def map_include?(key)
        @map.each_with_index do [key_value]
            if key_value.include?(key)
                true
            end
        end
        false
    end

    def delete(key)
        @map.delete_at(get(key))
    end

    def show
        puts @map
    end
end