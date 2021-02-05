class Stack 
    def initialize
      @stack = Array.new
    end

    def stack
        @stack
    end

    def push(el)
        if(@stack.empty?)
           @stack[0] = el
         else @stack[@stack.length] = el 
        end
    end

    def pop
      # removes one element from the stack
      if(@stack.empty?)
         raise "error"
       else 
        val = @stack[@stack.length-1]
        @stack[@stack.length-1] = nil
        return val
       end
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      if(@stack.empty?)
        raise "error"
      end
       
      return @stack[0]
    end
end 