# your code here
class Stack
    def initialize(limit=Float::INFINITY)
        @stack = []
        @limit = limit
    end

    def push(value)
        if(@limit == 0)
            raise StandardError.new("Stack Overflow")
        else
            @stack.push(value)
            @limit -= 1
        end
    end

    def pop
        @limit += 1
        @stack.pop
    end

    def peek
        @stack[@stack.length-1]
    end

    def size
        @stack.length
    end

    def empty?
        @stack.length == 0
    end

    def full?
        @limit == 0
    end

    def search(target)
        @stack.each_with_index do |item, idx|
          return size - idx - 1 if item == target
        end
        -1
      end

end