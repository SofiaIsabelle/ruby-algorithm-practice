# Bubble Sort iterates through every item in an array 

def bubble_sort(array)
    n = array.length # this means that n is the total number of values in our array
    
    loop do 
       
       swapped = false
       
       (n - 1).times do |i|
         if array[i] > array[i + 1]
             array[i], array[i + 1] = array[i + 1], array[i] #switch elements in an array
             swapped = true
         end 
        end
     
     break if not swapped
  end   
  
  array
end

a = [9, 2, 4, 6, 7, 1, 3, 5, 0, 33, 75, 88]

print bubble_sort(a)