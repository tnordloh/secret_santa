module SecretSanta
  class Person
    include Comparable
    attr_reader :first_name,:last_name,:email

    def initialize(raw_string)
      @first_name,@last_name,@email=raw_string.split(/\s+/)
      @email.gsub!(/[<>]/,"")
    end

    def <=>(another)
      return @last_name <=> another.last_name
    end
    
    def to_s
      "#{@first_name} #{@last_name}, #{@email}"
    end

  end
end
