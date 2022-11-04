
require_relative 'enumerable'

class MyList
  include Enumerable
  def initialize(*array1)
    @my_list = array1
  end

  def each(&len)
    @my_list.each(&len)
  end
end

my_list = MyList.new(1, 2, 3, 4)
puts(my_list.all? { |e| e < 5 })
puts(my_list.all? { |e| e > 5 })
puts(my_list.any? { |e| e == 2 })
puts(my_list.any? { |e| e == 5 })
puts(my_list.filter(&:even?))
