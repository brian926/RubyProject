def substrings(str, dictionary)
	word = Hash.new(0)
	arr = str.downcase.split(' ')
	#Runs through each word of the string
	  arr.each do |w|
    	dictionary.each do |i|
    		#Then runs through the dictionary, and checks words with the string
    		#If there is a match, places it inside the hash
      	  word[i] += 1 if w[i]
      end
     end
	puts word
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)