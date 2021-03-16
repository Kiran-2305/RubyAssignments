require 'httparty'


def getword
url='https://random-word-api.herokuapp.com/word'

response = HTTParty.get(url)
response.parsed_response
response.body
#puts "Word is #{response.body}"
end


def hangman
	randomword=getword
	randomword.delete!('["')
	randomword.chop!
	randomword.chop!
	
	puts "#{randomword}"
	
	randomwordlength=randomword.length
	attempts=randomwordlength*2
	count=0
	tempstring=""
	
	(1..randomwordlength).each{|i| tempstring+='_'}
	puts" "
	puts "Hint:word is having #{randomwordlength} characters"
	puts" "

	while count<=attempts
	
		puts tempstring
		puts" "
		puts "Guess the word...."
		
		wrd=gets.chop
		len=0
		   if tempstring.include?(wrd)
			 count-=1
		   end
		   while len< randomwordlength
			
			  if randomword[len].eql?(wrd) && tempstring[len].eql?("_")
			
				
				 tempstring[len]=wrd
				
			  end
			  len+=1	
		  end
		
	       count+=1
	       	if count==attempts/2
	       		puts "Half attempts remaining"
	       		
	       		puts "  "
	       		if tempstring[0]=="_"
	       			strtwid=randomword[0]
	       			puts "Hint :Word Starts with #{strtwid}"
				elsif tempstring[len-1]=="_"
	       			endwid=randomword[len-1]
	       			puts "Hint :Word ends with #{strtwid}"
	       			
	       		end
	       	end
	        if randomword.eql?(tempstring)
			puts" "
			puts"You win....!!!!"
			puts" "
			puts randomword
			break
		end
	end
	
	if randomword.eql?(tempstring)
		puts" "
		puts"You win....!!!!"
		puts" "
		puts randomword
	else
		puts" "
		puts"You lost.....Better luck next time"
		puts" "
		puts "Word is #{randomword}"
	end	

end


choice="y"
begin 

	hangman

	puts"Enter y or Y  to play again"
	choice=gets.chomp
	
end while choice=="y" || choice=="Y"






