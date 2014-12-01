require_relative "./secret_santa/assign_santas"
require_relative "./secret_santa/read_data"

module SecretSanta
  def self.get_santas(list)
    data = SecretSanta::ReadData.new(list)
    secret_santas = SecretSanta::AssignSantas.new(data.santas)
    final_entry = secret_santas.choose_valid_santa_list
    final_entry.map {|entry| "#{entry[0]} is assigned to #{entry[1]}"}
  end
end
