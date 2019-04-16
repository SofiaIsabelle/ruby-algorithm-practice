# Enumerables :
# One of Ruby's Enumerable classes are : Array, Hash , and Range

class City 
   include Enumerable
   
   def each
       yield "Austin"
       yield "San Fran"
       yield "Portland"
       yield "Durham"
       yield "Washington D.C"
       yield "Mexico City"
       yield "Berlin"
   end
   
end

city_options = City.new
city_options.each do |city|
    puts " Do you want to live in #{city} ?"
end

print city_options.find_all{|city| city.size < 4}
print city_options.reject {|city| city.size < 4}
print city_options.first

puts "==== Take ===="
print city_options.take(2)

p city_options.drop(2)