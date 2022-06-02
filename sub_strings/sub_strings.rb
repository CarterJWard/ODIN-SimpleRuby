#This functions takes a word and an array of substrings
#retuns a hash of words that are substrings of the word and the count of occurences
def substrings(word, subs)
    puts subs.select{|entry| word.include?(entry)}.tally
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
#{ "below" => 1, "low" => 1 }