readme.txt 
assignment 1

You should have the files
  - assignment1
    - specs
       - assignment1_specs.rb
    - assignment1.rb
    - README.txt
    - solution.rb
    - test1.txt
    - test2.txt 
    - test3.txt 
    - test4.txt 
    
REQUIREMENTS

Read a file containing lines with one letter per line.
The letters will be in the range A..K
Count the number of occurrences of each letter.

Test files are included but you may want to create
additional test files.

Execute the Rspec test cases with the command
 
$ rspec specs 

You will see many failures because you have not implemented the 
methods in assignment1.rb class yet. 

Complete the CountLetter class in file assignment1.rb. The given methods
must be implemented without changing the method 
signature as that is what the auto-grader will be 
expecting. 

----------------------------------------------------------------------

test1.txt contains

A
B
C
C
K
D
B
B
B

After call to analyzeFile the hash in @counts should contain 
{ "A" => 1, "B" => 4, "C" => 2, "D" => 1, "K" => 1 }

Hint:  use the Ruby method IO.foreach
and use the string method chomp! to process each line 
from the file.

sortByCountDecreasing converts the hash to an array 
and sort the array in decreasing count sequence

[ ["B", 4], ["C", 2], ["A", 1], ["D", 1], ["K", 1] ]

Hint:  Ruby has a .sort method on a hash table. 
But you have to write a code block that compares 
the hash entries.   Use the <=> compare operator.

Letters with same count can be in any order.

highestFrequency method should return the array
[ "B", 4 ]


If there are several letters that have the highest count
such as in test2.txt, then highestFrequency should return 
[ "BC", 4 ]

sortByLetter method should return an array containing 11 elements.
Each element is another array of length 2 with the letter and its 
count.
[ ["A", 1], ["B", 4], ["C", 2], ["D", 1], ["E", 0], 
  ["F", 0], ["G", 0], ["H", 0], ["I", 0], ["J", 0], 
  ["K", 1] ]
  
Hint:  use a range ('A'..'K'), convert it to an array, and use 
the map function on the array.
  
----------------------------------------------------------------------

test your class by running the solution.rb script 

$ ruby solution.rb test1.txt 
  
The expected output using test1.txt is 

The hash of [letter, count] contains {"A"=>1, "B"=>4, "C"=>2, "K"=>1, "D"=>1}
Array of [letter, count] in decreasing order by count is [["B", 4], ["C", 2], ["A", 1], ["K", 1], ["D", 1]]
most frequent letter is B with 4 occurrences.
Array of [letter, count] for A..K is [["A", 1], ["B", 4], ["C", 2], ["D", 1], ["E", 0], ["F", 0], ["G", 0], ["H", 0], ["I", 0], ["J", 0], ["K", 1]]


The expected output using file test2.txt is 

The hash of [letter, count] contains {"A"=>1, "B"=>4, "C"=>4, "K"=>1, "D"=>1}
Array of [letter, count] in decreasing order by count is [["C", 4], ["B", 4], ["A", 1], ["K", 1], ["D", 1]]
most frequent letters are BC with 4 occurrences each.
Array of [letter, count] for A..K is [["A", 1], ["B", 4], ["C", 4], ["D", 1], ["E", 0], ["F", 0], ["G", 0], ["H", 0], ["I", 0], ["J", 0], ["K", 1]]

----------------------------------------------------------------------

To run the Rspec autograder on your program use the command

$ rspec specs

If everything passes you will see 

.......

Finished in 0.01792 seconds (files took 0.1975 seconds to load)
7 examples, 0 failures

----------------------------------------------------------------------

Upload and submit only your completed assignment1.rb file to iLearn.

