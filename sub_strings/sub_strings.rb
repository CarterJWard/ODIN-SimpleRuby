#This functions takes a word and an array of substrings
#retuns a hash words with
def substrings(word, subs)
    puts subs.select{|entry| word.include?(entry)}.tally
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
#{ "below" => 1, "low" => 1 }