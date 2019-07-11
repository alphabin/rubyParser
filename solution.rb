require_relative "assignment1.rb"

if ARGV.length > 0
  filename = ARGV[0]
else
  puts "Enter test file name"
  filename = STDIN.gets.chomp
end

counter = CountLetters.new
counter.analyzeFile(filename) 

puts "The hash of [letter, count] contains #{counter.counts}"

puts "Array of [letter, count] in decreasing order by count is #{counter.sortByCountDecreasing.to_s}"

high = counter.highestfrequency

if ! high.nil?
  if high[0].length ==1 
    puts "most frequent letter is #{high[0]} with #{high[1]} occurrences."
  else 
    puts "most frequent letters are #{high[0]} with #{high[1]} occurrences each."  
  end
end

puts "Array of [letter, count] for A..K is #{counter.sortByLetter.to_s}"