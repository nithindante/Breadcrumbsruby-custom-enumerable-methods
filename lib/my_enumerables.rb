module Enumerable
  def my_each_with_index
    a = 0
    for i in self
      yield i,a
      a = a+1
    end
  end

  def my_select
    a = []
    for i in self
      if yield i
        a.push(i)
      end
    end
    return a
  end

  def my_all?
    a = []
    for i in self
      if yield i
        a.push(i)
      end
    end
    if a == self
      return true
    else
      return false
    end
  end

  def my_any?
    a = 0
    for i in self
      if yield(i) == true
        a =a +1
      end
    end
    if a>0
      return true
    else
      return false
    end
  end

   def my_none?
    a = []
    for i in self
      unless yield i
        a.push(i)
      end
    end
    if a == self
      return true
    else
      return false
    end
   end

   def my_count
    a = []
    unless block_given?
      return self.size
    else
      for i in self
        if yield i
          a.push(i)
        end
      end
    end
    return a.size
   end

   def my_map
    a = []
    for i in self
      a.push(yield(i))
    end
    return a
   end

   def my_inject(element)
    a =element
    for i in self
        a = yield a,i
    end
    return a
   end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method

class Array
  def my_each
    for i in self
      yield i
    end
  end
end
