#Given a 32-bit signed integer, reverse digits of an integer.
x = 987654321

def reverse(x)
    x = x.to_s.reverse.to_i
    return x
end


p reverse(x)