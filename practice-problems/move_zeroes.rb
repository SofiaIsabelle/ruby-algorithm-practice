
def move_zeroes(nums)
    i = 0
    nums.each do |n|
        if n != 0
            nums[i] = n
            i += 1
        end
    end
    
    (i..nums.size).each {|indx| nums[indx] = 0}
        return nums
end


p move_zeroes([0,1,0,3,12,99,0,100, 22, 45])