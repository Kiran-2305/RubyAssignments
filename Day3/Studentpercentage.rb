
class Student
	attr_accessor :roll_no,:name,:marks

	def initialize(roll_no,name)
		@roll_no=roll_no
		@name=name
		@marks=Array.new
	end
	def getmarks
	 	
	 	
	 	for i in 0..4
		 	
		 	puts"enter marks for #{@name}"
		 	mark=gets.chomp.to_i
		 	@marks[i]=mark
		end
		
	 end	
	  	
	def calPercentage
		sum=0
		@marks.each{|i| sum =sum + i}
		percentage=(sum/500.to_f)*100
	
		
		puts "Percentage of #{@name} is #{percentage}"
	end		
end


class Studentportal

  	def Studentportal.studentinfo
  	
  		puts"enter no of stuents"
  		
  		students=gets.chomp.to_i
  		studentArray=Array.new(students)
  		
  		(0...students).each do |i|
  		
	  		puts "enter Sudent id"
	  		id=gets.chomp.to_i
	  		puts "enter name"
	  		name=gets.chomp
	  		s=Student.new(id,name)
	  		studentArray[i]=s
  		
  		end
  		
  		studentArray.each  {|s| s.getmarks}
  		
  		studentArray.each {|s| s.calPercentage}
  		
  	end
end


Studentportal.studentinfo
		
		
		
		
		
		
		
		
	
	
