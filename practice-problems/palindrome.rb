num = gets.to_i

def is_palindrome(num)
    
    rev = 0
    
    r = num
    
    r = num
    
while r != 0 
    
    i = r%10
    
    rev = rev * 10 + i 
    
    r /= 10
    
end


if rev == num
    puts "#{num} is a Palindrome"
else
    puts "Sorry but #{num} is not a Palindrome"
end

end

num = 5550555055505550555

p is_palindrome(num)