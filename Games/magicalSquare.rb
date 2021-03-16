

class Magicalsqare
    attr_accessor :array, :sumArray
    

    def initialize
        @array = Array.new(3) { Array.new(3) {"_"} }
        @sumArray=Array.new(8)
    end
    def insertCornerElements
        puts"Enter element at [0][0] position"
        @array[0][0]=gets.chomp.to_i
        puts"Enter element at [0][2] position"
        @array[0][2]=gets.chomp.to_i

        puts"Enter element at [2][0] position"
        @array[2][0]=gets.chomp.to_i

        puts"Enter element at [2][2] position"
        @array[2][2]=gets.chomp.to_i
    end

    def insertMiddleElements
        temparr=self.getElements
        puts"enter element at [0][1] position"
        ele=gets.chop.to_i
        if temparr.include?(ele) 
          @array[0][1]=ele
        else 
            #puts "you entered wrong number"
            raise "you entered wrong number"
        end

        puts"enter element at [1][2] position"
        ele=gets.chop.to_i
        if temparr.include?(ele) 
          @array[1][2]=ele
        else 
            #puts "you entered wrong number"
            raise "you entered wrong number"
        end

        puts"enter element at [2][1] position"
        ele=gets.chop.to_i
        if temparr.include?(ele) 
          @array[2][1]=ele
        else 
            #puts "you entered wrong number"
            raise "you entered wrong number"
        end

        puts"enter element at [1][0] position"
        ele=gets.chop.to_i
        if temparr.include?(ele) 
          @array[1][0]=ele
        else 
            #puts "you entered wrong number"
            raise "you entered wrong number"
        end
    end
    def getElements
        temparr=[@array[0][0], @array[0][2], @array[2][2],@array[2][0]]
        
        
    end
    def displaySqaure

        for i in 0..2
            for j in 0..2
                print @array[i][j]
                print "  "
            end
            puts""
        end
    end

    def insertMidElement
        puts"enter element at [1][1] position"
        @array[1][1]=gets.chomp.to_i
    end
    def calSum

        for i in 0..2
            sumr=0
            sumc=0
            for j in 0..2
               
                if @array[i][j].class.eql?(Integer) && @array[j][i].class.eql?(Integer)
                  sumr+=@array[i][j]
                  sumc+=@array[j][i]
                else
                   # puts "you have given bad credentails"
                    raise "you have given bad credentails"
                end

            end
            @sumArray<<sumr
            @sumArray<<sumc
        end

        sum1=@array[0][0]+@array[1][1]+@array[2][2]
       
        sum2=@array[0][2]+@array[1][1]+@array[2][0]
        @sumArray<<sum1
        @sumArray<<sum2
        #puts @sumArray
    end
    def findRepeatingEle
        temparr=Array.new
        count=0
        @sumArray.each do |x|
            if !temparr.include?(x)
                c=@sumArray.count(x)
                temparr<<x
                count+=c-1
            end
        end
        return count
    end
   
end



def callmagicalsqr
   
    condition="y"
 begin
    begin
    puts "Welcome to Magical Square"
    sqare1=Magicalsqare.new
    sqare2=Magicalsqare.new

    puts "Player 1 enter the corner elements of square"
    sqare1.displaySqaure
    sqare1.insertCornerElements

    puts "Player 2 enter the corner elements of sqare"
    sqare2.displaySqaure
    sqare2.insertCornerElements

    puts "USer 1 Enter middle elements from following elements"
    puts sqare2.getElements
    sqare1.displaySqaure
    sqare1.insertMiddleElements
    sqare1.insertMidElement
    puts "Your Square looks like"
    sqare1.displaySqaure

    puts "USer 2 Enter middle elements from following elements"
    puts sqare1.getElements
    sqare2.displaySqaure
    sqare2.insertMiddleElements
    sqare2.insertMidElement
    puts "Your Square looks like"
    sqare2.displaySqaure

   sqare1.calSum
   sqare2.calSum    
    
    count1= sqare1.findRepeatingEle
    count2=sqare2.findRepeatingEle

    if count1>count2
        puts "Yay!!!! User1 Wins....!!!!!!!!"
        puts "user2 better luck Next time....."
    elsif count1==count2
        puts "Its a tie"  
    else
        puts "Yay!!!! User2 Wins....!!!!!!!!"
        puts "user1 better luck Next time....."
    end
    
 rescue Exception 
    puts "you have given WRONG credentials"
 end
 puts "press y or Y  to play again"
 condition=gets.chomp
end while condition=="y" || condition=="Y"
end

callmagicalsqr

