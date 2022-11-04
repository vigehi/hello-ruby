
module Enumerable
  def all?
    answer = false
    @my_list.each do |array|
      answer = true if yield(array)
      return false unless yield(array)
    end
    answer
  end

  def any?
    @my_list.each do |array|
      return true if yield(array)
    end
    false
  end

  def filter
    even = []
    @my_list.select do |array|
      even.push(array) if yield(array)
    end
    even
  end
end
