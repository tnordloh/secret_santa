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
        permutation.all? { |item| item[0] != item[1] }
      end
    end
    def choose_valid_santa_list
      choices=valid_permutations
      raise "no valid santas" if choices.size==0
      valid_permutations.sample
    end
  end
end
