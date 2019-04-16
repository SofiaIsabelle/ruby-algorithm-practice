require 'rspec'

def sentence_reverse str
    str.split.reverse.join('')
end

p sentence_reverse("Hello World")