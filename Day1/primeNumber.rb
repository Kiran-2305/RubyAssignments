



def isprime(num)

i=2

while i<=num/2

if num%i==0

return 1
else
 i=i+1
end
end 
return 0

end 


puts "enter number"

num=gets
j=isprime(Integer(num))

if(j==1)
puts "it is not prime"

else
puts "its prime"

end


