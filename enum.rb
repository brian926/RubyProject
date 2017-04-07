module Enumerable

def my_each
  arr = self

  for x in 0...arr.length-1
  	yield arr[x]
  end
end

 def my_each_with_index
  	array = self
  	for n in 0...array.length
  	  yield(array[n], n)
  	end
  end

  def my_select
    array = self
    new_array = []
    for n in 0...array.length
      if yield(array[n]) == true
        new_array << array[n]
      end
    end
    new_array
  end
end

def my_all?
  arr = self

  for x in 0...arr.length
  	if yield(arr[x]) == false
  		return false
  	end
  end
  return true
end

def my_any?
  arr = self

  for x in(0...arr.length)
  	if yield(arr[x]) == true
  		return true
  	end
  end
  return false
end

def my_none?
  arr = self

  for x in 0...arr.length
  	if yield(arr[x]) == true
  		return false
  	end
  end
  return true
end

def my_count
  arr = self
  count = 0
  for x in(0...arr.length)
  	if yield(arr[x]) == true
  		count += 1
  	end
  end
  return count
end

def my_map(procc = nil)
	arr = self
	newArr = []

  if procc == nil
  	for x in (0...arr.length)
  		newArr << yield(arr[x])
  	end
  	return newArr
  else
  	arr.my_each do |n|
  		newArr << procc.call(n)
  	end
  end
  return newArr
end

def my_inject(mulArr = nil)
	arr = self

	if mulArr == nil
		total = 0
		n = 0
	else
		total = arr.first
		n = 1
	end

	for n in (0...arr.length)
		total = yield(total, arr[n])
	end
	return total
  end