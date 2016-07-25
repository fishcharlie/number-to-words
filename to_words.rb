WORDS1 = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'];
WORDS10 = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'];
WORDSBASE10 = ['','','twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];
WORDS100 = ['','','twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];

def to_words(i)


	@array = i.to_s.split('')

	if (@array.length == 1)
		return firstdigit(@array)
	end
	if (@array.length == 2)
		return seconddigit(@array)
	end
	if (@array.length == 3)
		return thirddigit(@array)
	end

end

def firstdigit (array)
	return WORDS1[array[array.length-1].to_i]
end
def seconddigit (array)
	if (array[array.length-2] == '1')
		return WORDS10[array[array.length-1].to_i]
	end
	if (array[array.length-1] != '0')
		return WORDSBASE10[array[array.length-2].to_i] + '-' + firstdigit(array)
	end
	return WORDSBASE10[array[array.length-2].to_i]
end
def thirddigit (array)
	myvar = WORDS1[array[array.length-3].to_i] + ' hundred' + seconddigit(array)
	return myvar
end


# to_words(0)
# to_words(1)
# to_words(2)
# to_words(3)
# to_words(4)
# to_words(5)
# to_words(6)
# to_words(7)
# to_words(8)
# to_words(9)
# to_words(10)
# puts to_words(113)
