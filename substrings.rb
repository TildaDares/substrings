def substrings(string = "Put something in there", dictionary)  
    dictionary_hash = {}
dictionary.each do |word|
    if /#{word}/i =~ string
        dictionary_hash[word] = string.scan(/#{word}/i).length
    end
end
puts dictionary_hash
end

puts "Enter a string"
string = gets.chomp
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings(string, dictionary)