module Crud

  def insert(hash,obj)
   
    hash[obj.id]=obj
    puts"User added Successfully"
  end
  
  def update(hash,id,age)

    hash.each do |key,value|
      if key==id
        value.age=age
      end
    end
   
    puts "user updated successfully"

  end 
  def delete(hash,id)
    hash.each do |key|
      if hash[key]==id
        hash.delete(key)
      end
    end  
  end

  def display(hashUser,id)
   puts "User details #{hashUser.fetch(id)}"
   # hashUser.each do |key|
    #  puts hashUser[key]
     # puts hashAddress[key]
    #end

  end
end


class User
 attr_accessor :id,:name,:age

  def initialize(id,name,age)
    @id=id
    @name=name
    @age=age
  end

  def displaydetails

    puts "User ID#{@id}"
    puts "User Name is #{@name}"
    puts "User age is #{@age}"
  end
end

class Address
  attr_accessor :id,:street,:city,:state,:pin

  def initialize(id,street,city,state,pin)
    @id=id
    @street=street
    @city=city
    @pin=pin
  end
  def displaydetails
    puts "User ID#{@id}"
    puts "Street is #{@street}"
    puts "City is #{@city}"
    puts "Pin is #{@pin}"
  end

end


class Operations
  extend Crud

  def self.mainmethod
      userHash=Hash.new
      addressHash=Hash.new


      puts "select 0.Exit 1.User 2.Address"
      s=gets.chomp.to_i
      switch=1

  while switch!=0

     case s
       when 0
            switch=0

       when 1
             puts "select which operation you want to perform 0.exit 1.insert 2.update 3.delete 4.display"

              cs=gets.chomp.to_i
              case cs
                    when 0
              		break
                    when 1
                        puts "enter id name and age of user"
                            id=gets.chop.to_i
                            name=gets.chop
                            age=gets.chomp.to_i
                            u=User.new(id,name,age)
                            Operations.insert(userHash,u)
                
                    when 2

                            puts "enter id age of user to update"
                            id=gets.chomp.to_i
                            age=gets.chomp.to_i
                            Operations.update(userHash,id,age)

                    when 3
                            puts "enetr id of user to be deleted"
                            id=gets.chomp.to_i
                            Operations.delete(userHash,id)

                    when 4
                            puts "enter id"
                            id=gets.chomp.to_i
                            puts userHash.fetch(id)
                            Operations.display(userHash,id)
                            
              end
        
	end
    end
     
  end 
end



Operations.mainmethod


