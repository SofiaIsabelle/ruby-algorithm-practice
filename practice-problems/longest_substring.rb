def length_of_longest_substring(s)
    strLen = s.length
    longestSub = 0
    charMap = {}

j = 0
i = 0

while j < strLen
    if charMap.key?(s[j])
        i = [charMap[s[j]], i].max
    end

    longestSub = [longestSub, j - i + 1].max
    charMap[s[j]] = j + 1
    
    j += 1
end

longestSub

end

puts length_of_longest_substring("abcabcab")

