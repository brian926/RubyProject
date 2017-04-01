def stock_picker(arr)
	buy_index = 0
	stock = [0]
	#We run through all our buy days and ensure our sell index starts on the same day
	arr.each do |buy|
		sell_index = buy_index
		#Then we run through each sell day to make sure we have the large net profit
		arr[buy_index..-1].map do |sell|
			net = sell - buy
			if net > stock[0]
				stock[0] = net
				stock[1] = buy_index
				stock[2] = sell_index
			end

			sell_index += 1
		end

		buy_index += 1
	end
	puts "Buy on day #{stock[1]} and sell on day #{stock[2]}"
end

stock_picker([17,3,6,9,15,8,6,1,10])