
def methodA(a=1,b=2,c=a+b)
  puts "#{a},#{b},#{c}"
end
def methodB(a=1,b=2,*z)
  puts "#{a},#{b}"
  z.each{|var| print " #{var}, "}
end
methodA 5
methodB 3, 6, 9, 12, 15, 18