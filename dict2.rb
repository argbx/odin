def substrings (word,dictionary)
  word.gsub!(/\W/,' ')
  word = word.downcase
  list = Hash.new(0)
  temp = []
  dictionary.each do |x|
    if word.include?(x)

      list[x] = word.scan(x).size



    end

  end
  #list =Hash[list.sort_by {|word, n| word}]
  puts list
#  puts Hash[list.sort]
#puts word
#puts temp
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#substrings("down!", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)
