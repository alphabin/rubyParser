require_relative '../assignment1.rb'


describe CountLetters do 
   
  it "check that methods exist" do
    x = CountLetters.new()
    expect(x).to respond_to(:analyzeFile)
    expect(x).to respond_to(:counts)
    expect(x).to respond_to(:highestfrequency)
    expect(x).to respond_to(:sortByLetter)
  end 
  
  it "CountLetter.new should create empty hash" do 
     x = CountLetters.new()
     expect(x.counts.size).to eq 0
  end 
  
  it "In test1.tst B is most frequent letter with 4 occurrences" do
    x = CountLetters.new
    x.analyzeFile("test1.txt")
    expect(x.counts.size).to be > 0
    expect(x.highestfrequency).to eq ["B", 4]
    letters = x.sortByLetter
    expect(letters.size).to eq 11
    expect(letters[0]).to eq ["A", 1]
    expect(letters[1]).to eq ["B", 4]
    expect(letters[-1]).to eq ["K", 1]
  end
  
  it "In test2.txt BC are most frequent letters with 4 occurrences" do
    x = CountLetters.new
    x.analyzeFile("test2.txt")
    expect(x.counts.size).to be > 0
    expect(x.highestfrequency).to eq ["BC", 4]
    letters = x.sortByLetter
    expect(letters.size).to eq 11
    expect(letters[1]).to eq ["B", 4]
    expect(letters[2]).to eq ["C", 4]
    expect(letters[-1]).to eq ["K", 1]
  end
  
  it "test3.txt E is only letter in the file" do
    x = CountLetters.new
    x.analyzeFile("test3.txt")
    expect(x.counts.size).to eq 1
    expect(x.highestfrequency).to eq ["E", 1]
    letters = x.sortByLetter
    expect(letters.size).to eq 11
    expect(letters[4]).to eq ["E", 1]
    expect(letters[-1]).to eq ["K", 0]
  end
  
  it "a non existant file should raise error" do
    x = CountLetters.new
    #x.analyzeFile("does not exist")
    expect { x.analyzeFile("file_does_not_exist.txt")}.to  raise_error( 
      /No such file or directory.*file_does_not_exist\.txt/i )

  end
  
  it "test4 an empty file should return highestfrequency of nil" do
    x = CountLetters.new
    x.analyzeFile("test4.txt")
    expect(x.counts.size).to   eq 0
    expect(x.highestfrequency).to be_nil
    letters = x.sortByLetter
    expect(letters.size).to eq 11
    expect(letters[0]).to eq ["A", 0]
    
  end


end

