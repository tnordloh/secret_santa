module SecretSanta
  class AssignSantas
    attr_reader :permutations
    def initialize(santas)
      @santas = santas
      @permutations = permutations
    end

    def permutations
      @santas.permutation.map {|permutation| @santas.zip(permutation)}
    end

    def valid_permutations
      @permutations.select do |permutation|
        permutation.all? do |item|
          item[0] != item[1]
        end
      end
    end
    def choose_valid_santa_list
      possibilities = valid_permutations
      possibilities[rand(0...possibilities.size)]
    end
  end
end
