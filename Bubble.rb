def bubble_sort(arr)
  
  loop do
  	swap = false
  (arr.length-1).times do|x|
  	if arr[x] > arr[x+1]
  		arr[x], arr[x+1] = arr[x+1], arr[x]
  		swap = true
  	end
  end
  	  break if not swap
  end
 print arr
end

def bubble_sort_by(arr)
  loop do
  	swap = false
  	  (arr.length-1).times do |x|
  	  	if (arr[x].length <=> arr[x+1].length) == 1
  		  arr[x], arr[x+1] = arr[x+1], arr[x]
  		  swap = true
  		end
  	end
  break if not swap	
   end
 print arr
end

bubble_sort([4,3,78,2,0,2])

bubble_sort_by(["hi","hello","hey", "I", "boy"]) do |left,right|
	left.length - right.length
end