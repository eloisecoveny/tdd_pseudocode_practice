require('pry')

def pigify(sentence)
	# Convert sentence to lower case
	# split sentence into array of words
	words_array = sentence.downcase.split()

	# for each word...
	amended_words = []
	for word in words_array
		# Move first letter to the end
		# Add "ay" to the end of each word
		amended_words << (word[1..-1] + word[0] + "ay")
	end

	# join words to make a new string
	# Capitalize first letter of first word
	# return sentence
	return amended_words.join(" ").capitalize()

end

def reduce_number(number)
	if number > 9
		# Convert the number into a string and separate the digits
		split_digits = number.to_s.split(//)
		sum = 0
		# For each digit in the number
		for digit in split_digits
			# Convert it into an integer and add it to the total "sum"
			sum += digit.to_i
		end
		# Recursion
		reduce_number(sum)
	else
		return number
	end
end

def order_total(order)
	# Calculate the number of unique books
	unique_books = order[:items].count()
	# Calculate the discount
	discount = 0.05 * (unique_books - 1)
	# Calculate the total quantity of books
	total = 0
	for book in order[:items]
		total += (book[:quantity] * book[:price])
	end
	# Calculate the total order cost including discount
	total = (total * (1 - discount)).round(2)
	# Return a string that declares the customer's name and their total including discount
	return "#{order[:name]}'s total is £#{total}"
end
