require_relative "./secret_santa/assign_santas"
require_relative "./secret_santa/read_data"

module SecretSanta
  def self.get_santas
    data = SecretSanta::ReadData.new()
    secret_santas = SecretSanta::AssignSantas.new(data.santas)
    possibilities = secret_santas.valid_permutations
    final_entry = possibilities[rand(0...possibilities.size)]
    final_entry.map {|entry| "#{entry[0]} is assigned to #{entry[1]}"}
  end
end
