# frozen_string_literal: true

def substrings(dictionary, string = 'Put something in there')
  dictionary_hash = {}
  dictionary.each do |word|
    dictionary_hash[word] = string.scan(/#{word}/i).length if /#{word}/i =~ string
  end
  puts dictionary_hash
end

puts 'Enter a string'
string = gets.chomp
dictionary = %w[below down go going horn how howdy it i low own par partner sit]

substrings(string, dictionary)
