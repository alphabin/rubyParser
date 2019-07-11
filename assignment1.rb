#Chatura Ahangama CSUMB 7/11/19

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
    IO.foreach(file) {|x| 
      #replaces \r\n
      x = x.gsub(/\r\n+/, "")
      @counts[x] += 1 }
  end  
  
  # return an array of lists  
  # [ [letter, count], [letter, count], ... [letter, count] ]
  #  Only letters with count >0 are returned.
  #  Array is in decreasing order by count.
  def sortByCountDecreasing
      sortedDec = @counts.sort{|a,b| b[1]<=>a[1]}
      sortedDec.to_a
  end
  
  # return an array  [  string, count ]
  #  string is the letter or letters that occur the most
  #  count of occurrences
  def highestfrequency
     gatherKeys = ""
     valueHigh = 0
     @counts.each { |k, v| 
        if v ==  @counts.values.max
           gatherKeys += k 
           valueHigh = v 
        end
      }
     returnval = { gatherKeys => valueHigh}.to_a[0]
     #doing a last minute check
     if(gatherKeys == "")
        returnval = nil
     end
     returnval
  end
  
  # return array of length 11. Each element  is [letter, count].  
  # [ ["A", count], ["B", count], ... , ["K", count] ] 
  # array is in order by letters
  def sortByLetter
     hashStore = {}
     ("A".."K").each{ |letter|
      if @counts.key?(letter)
          hashStore[letter] = @counts[letter]
      else
          hashStore[letter] = 0
      end
     }
     hashStore.to_a
  end
  
end


