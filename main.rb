##ทำคำยากๆยังไม่ได้ พวกสัญลักษณ์ต่างๆ

arr = "อ๋อฮ่าไฮ้หิวหัวหำก็เป็นอาร์เรย์ภาพยนตร์ของตู่ชุดตัวโอ๊ะโอโม่เพี๊ยะเพียบเพียะเอื้ออมหำภมรดอมดมไทยนะจ๊ะอีเด็กก็มุง".encode('UTF-8')

#arr = "จึงเรียนมาเพื่อทราบ".encode('UTF-8')
#arr = "เพียะหำฉ่ำเพี้ยเพี๊ยะเบื่อเบือเบอะโบ๊ะโบะ".encode('UTF-8')



arr.encode('UTF-8')

#arr.split('')
arr2 =[]
$LEN = arr.length

for i in 0...$LEN
  arr2 << arr[i]
end
#puts arr2

ch = [] #1 อักษร
for i in "ก".."ฮ"
  ch << i
end

pre = [] #2 ก่อน
for i in "เ".."ไ"
  pre << i
end

post1 = [] #3 สระ
for i in "ฯ".."ฺ"
  post1 << i
end

post2 = [] #4 วรรณยุกต์
for i in "็".."ํ"
  post2 << i
end


=begin 
print "ch is ",ch.class
puts
print "arr is ",arr.class
puts
print "arr2 is ",arr2.class
puts


puts ch
puts pre
puts post
=end
#print arr2.length,"\n"
bi=[]

arr2.each do |x|
  #puts x   
  if(ch.include?(x))#is character?
    bi<<1
    #puts "อักษร\n"
  elsif(pre.include?(x))
    bi<<2
    #puts "สระก่อน\n"
  elsif(post1.include?(x))
    bi<<3
    #puts "สระหลัง\n"
  elsif(post2.include?(x))
    bi<<4
   # puts "วรรณยุกต์\n"
  else
    puts "error"
  end
    #puts
end
#arr2.replace(,)
#print bi.length,"  "
#print arr2.length,"\n"


#1อักษร #2สระก่อน #3สระหลัง #4วรรณ
for i in 0...$LEN
  j=i
  case bi[i]
  when 1#1อักษร
    
           
    if(bi[j+1]==3)#สระหลัง
      print arr2[i]
    elsif(bi[j+1]==4)#4วรรณ     
      print arr2[i]    
    elsif(bi[j+1]==2)#สระก่อน
      print arr2[i]
      print " | "
    else
      print arr2[i]   
      print " | "
    end
  when 2#2สระก่อน 
   print arr2[i]


  when 3#3สระหลัง 
    if(arr2[j+2]=="์")#การันย์
      print arr2[i]
      print " | "
    elsif (arr2[i]=="ี" &&  arr2[j-2]=="เ") #    ี 
      print arr2[i]
    elsif (arr2[i]=="ื" &&  arr2[j-2]=="เ") #   ื
      print arr2[i]
    elsif(bi[j+1]==1)#มีอักษรต่อ
      if(arr2[i]=="ั")#ไม้หันอากาศ   ั
        print arr2[i]
      else
        print arr2[i]
        print " | "
      end
    elsif(bi[j+1]==2)#มีสระก่อนต่อ
      print arr2[i]
      print " | "
    else
      print arr2[i]
    end



  when 4#4วรรณยุกต์
# (arr[j+1]!="ย" || arr[j+1]!="อ")
    if(arr2[j]=="็" && arr2[j-2]=="เ")#   ็ 
      print arr2[i]
    #elsif(arr2[j]==)
    
    
    elsif(bi[j+1]==1 || bi[j+2]==3)#อักษรต่อ
      if(arr2[j+1]=="ย" || arr2[j+1]=="อ")
      print arr2[i]
      else
        print arr2[i]
        print " | "
      end
    elsif(bi[j+1]==2)#มีสระก่อนต่อ
      print arr2[i]
      print " | "
    elsif(bi[j+1]==3)#มีสระหลัง ต่อ
      print arr2[i]
    end
  else
    print arr2[i]
    print " | "
  end 

end
puts "\n",arr
#เ    ห     ี   ้    ย

=begin
เห็น
เห้น
เห็นน์
for i in 0...$LEN
  if(bi[i]==1)
    print arr2[i]
  elsif(bi[i]==2)
    print "    "
    print arr2[i]
  else
   print arr2[i]
  end
  
=end