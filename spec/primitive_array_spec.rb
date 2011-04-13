require 'minitest/autorun'
require File.join(File.dirname(__FILE__), '..', 'lib', 'primitive_array.rb')

describe Primitive::Array do
  before do
    @primitive_array = Primitive::Array.new(10)
  end

  it 'must have the specified length' do
    @primitive_array.length.must_equal 10
  end
  
  describe 'accessing values by index' do
    it 'must allow getting and setting within a valid range' do
      @primitive_array[0] = 42
      @primitive_array[0].must_equal 42
    end
    
    it 'must raise an error when getting an out-of-bounds value' do
      lambda {@primitive_array[10]}.must_raise ArgumentError
    end
    
    it 'must raise an error when setting an out-of-bounds value' do
      lambda {@primitive_array[10] = 42}.must_raise ArgumentError
    end
  end
end