# Below is the interface for Iterator, which is already defined for you.
#
# class Iterator
# 	def initialize(v)
#
#   end
#
#   def hasNext()
#		Returns true if the iteration has more elements.
#   end
#
#   def next()
#   	Returns the next element in the iteration.
#   end
# end

class PeekingIterator
  attr_accessor :iter
  attr_accessor :next_val

  # @param {Iterator} iter
  def initialize(iter)
    @iter = iter
    @next_val = @iter.hasNext() ? @iter.next() : nil
  end

  # Returns true if the iteration has more elements.
  # @return {boolean}
  def hasNext()
    return (@next_val != nil)
  end

  # Returns the next element in the iteration.
  # @return {integer}
  def next()
    old = @next_val
    @next_val = iter.hasNext() ? iter.next() : nil
    return old
  end

  # Returns the next element in the iteration without advancing the iterator.
  # @return {integer}
  def peek()
    @next_val
  end
end