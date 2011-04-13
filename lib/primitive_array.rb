module Primitive
  class Array
    attr_reader :length
    def initialize(length)
      @length = length
      @storage = []
    end
    
    def []=(index, element)
      raise ArgumentError, 'Attempted to access an out-of-bounds element' unless index < @length
      @storage[index] = element
    end
    
    def [](index)
      raise ArgumentError, 'Attempted to access an out-of-bounds element' unless index < @length
      @storage[index]
    end
  end
end
