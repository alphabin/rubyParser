class CountLetters 

  # define an instance variable containing empty hash with key being the letter
  #  and value being the count of occurrences of the letter
  #  use Hash.new(0) to create empty hash table
  def initialize()
    @counts = Hash.new(0)
  end 
  
  # accessor for the hash
  def counts
     @counts
  end
  

  # given a filename, read the file and for each letter update the hash table  
  def analyzeFile(file) 
  
   
  end  
  
  # return an array of lists  
  # [ [letter, count], [letter, count], ... [letter, count] ]
  #  Only letters with count >0 are returned.
  #  Array is in decreasing order by count.
  def sortByCountDecreasing
    
  end
  
  # return an array  [  string, count ]
  #  string is the letter or letters that occur the most
  #  count of occurrences
  def highestfrequency
     
  end
  
  # return array of length 11. Each element  is [letter, count].  
  # [ ["A", count], ["B", count], ... , ["K", count] ] 
  # array is in order by letters
  def sortByLetter
     
  end
  
end


