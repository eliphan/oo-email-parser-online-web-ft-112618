# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser
  attr_accessor :email
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(email)
    @email = email
    @@all << self
  end
  
  def self.new(email)
    parser = self.new
    parser.email = email
    @@all << parser
  end
  

  
  
  def parse
    @@all.each do |email|
      email_parsed = email.split(",", " ").collect{|e| e.join(" ")}
    end
  end
  

  
  
end