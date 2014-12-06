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
  puts list
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
