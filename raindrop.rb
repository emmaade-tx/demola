class Raindrops
 def self.convert(num)
     if num % 3 == 0 && num % 5 ==0 && num % 7 == 0
       return "PlingPlangPlong"
     elsif num % 3 ==0 && num % 5 == 0
       return "PlingPlang"
       #binding.pry
     elsif num % 3 == 0 && num % 7 == 0
       return "PlingPlong"
       #binding.pry
     elsif num % 3 == 0
       return "Pling"
       #binding.pry
     elsif num % 5 == 0
       return "Plang"
       #binding.pry
     elsif num % 7 == 0
       return "Plong"
       #binding.pry
     else
       return num.to_s
       #binding.pry
     end
   end
end
