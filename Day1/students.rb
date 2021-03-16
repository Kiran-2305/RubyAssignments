

def check_grade(grade)


if grade<=5 && grade>=1

return "elementary"

elsif grade<=8 
return "middle school"

elsif  grade <=12
return "high school"

else
return "collage"

end

end 


puts "enter standard"

 grade=gets


puts check_grade(Integer(grade))
