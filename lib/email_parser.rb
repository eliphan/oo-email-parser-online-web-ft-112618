# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser
  attr_accessor :emails
  @@emails = []
  
  def self.all
    @@emails
  end
  
  def initialize(emails)
    @emails = emails
    @@emails << emails
  end
  

      
  def parser
    parser = self.new(emails)
  end
  
  
  
  def parse
      @@emails.each do |email|
      parsed_email = []
      parsed_email << parser.split(",", " ").collect{|e| e.join(" ")}
      
    end
  end
  

  
  
end