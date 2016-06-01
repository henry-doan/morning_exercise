require 'numbers_and_words'

def magic_number
	puts 'Type in any positive number'

 	@number = gets.strip.to_i

	word = I18n.with_locale(:en) { @number.to_words remove_hypen: true}

 	if word.length == 3
 		puts "#{@number} is 3"
 		puts '3 is 5'
 		puts '5 is 4 and 4 is the magic number.'
 	elsif word.length == 5
 		puts "#{@number} is 5"
 		puts '5 is 4 and 4 is the magic number.'
 	elsif word.length == 4
 		puts '4 is the magic number.'
 	elsif word.length == 6
 		puts "#{@number} is 6"
 		puts '6 is 3'
 		puts '3 is 5'
 		puts '5 is 4 and 4 is the magic number.'
 	end

	puts 'Type q to Quit or press enter to play agian.'
	if gets.strip.downcase == 'q'
 			exit(0)
 	end
end

 while true
 	magic_number
end

#working on refactor version
# def magic_number
# 	puts 'Type in any positive number'

# 	@number <<gets.strip.to_i

# 	@word =[]

# 	while @number != 4 do
# 		puts I18n.with_locale(:en) { @word.to_words remove_hypen: true}
# 		 @word << I18n.with_locale(:en) { @number.to_words remove_hypen: true}
# 		if I18n.with_locale(:en) { @number.to_words remove_hypen: true} == 4
# 			puts '4 is the magic number'
# 		end
# 	end
# end

# magic_number