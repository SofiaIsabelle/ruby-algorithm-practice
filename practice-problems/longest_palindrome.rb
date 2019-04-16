=begin
Given a string s, find the longest palindromic substring in s. You may assume that the maximum length of s is 1000.
=end
 
def longest_palindrome(s)
    return s if s.empty?
    chars = s.chars
    current_longest_pair = [0, 0]
    
    index_pairs = chars.map.with_index{|e, i| [i, i]} + chars[0..-2].map.with_index{|e, i| e == chars[i+1] ? [i, i+1] : nil}.compact
    
    expansion = 0
    until index_pairs.empty?
        current_longest_pair = index_pairs.max_by{|(i, j)| j - i}
        expansion += 1
        index_pairs = index_pairs.select{|(i, j)| ((i - expansion) >= 0) && chars[j+expansion] && chars[i - expansion] == chars[j+expansion]}
    end
    
    expansion -= 1
    s[(current_longest_pair.first - expansion)..(current_longest_pair.last + expansion)]
end

p longest_palindrome("babad") == "bab" || longest_palindrome("babad") == "aba"

p longest_palindrome("cbbd") == "bb"