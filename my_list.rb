require_relative 'my_enumerable'

class Mylist
  include MyEnumerable

  def initialize(*mylist)
    @list = mylist
  end

  def each(&block)
    @list.each(&block)
  end
end
