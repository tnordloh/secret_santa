module SecretSanta
  class ReadData
    require_relative "person"
    attr_reader :santas
    def initialize(list)
      @santas = []
      list.each do |line|
        @santas << SecretSanta::Person.new(line)
      end
    end
  end
end
