class Student
  attr_accessor :Roll_no,:Name,:marks

    def initialize(roll_no,name)
       @Roll_no=roll_no
       @Name=name
       @Marks=Array.new
    end

    def getdetails
    puts "enter marks for 5 sub"
    (1..5).each do |i|
       puts"Enter marks"
       marks[i]=gets().chomp().to_i
    end

    end 

    def displaymarks
      sum=0
      @Marks.each do |m|
        sum+=m
      end
     puts"Avg MArks of Student #{sum}" 
    end
end



  puts "enter no of students"
  noOfstudents=gets().chomp().to_i
  
  StudentArray=Array.new(noOfstudents)
  (1..noOfstudents).each do |s|

    puts"enter roll no"
    rollno=gets().chomp().to_i
    Name=gets().chomp()
   
    
    StudentArray[s]=Student.new(rollno,Name)
  end

    (1..noOfstudents).each {|i| StudentArray[i].getdetails}

  (1..noOfstudents).each {|i| StudentArray[i].displaymarks}


