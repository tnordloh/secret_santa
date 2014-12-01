require "minitest/autorun"

require_relative "../lib/secret_santa/assign_santas"

describe SecretSanta::AssignSantas do

  it "can generate all permutations of a list" do
   list = SecretSanta::AssignSantas.new([1,2])
   returnme = [[[1, 2], [2, 1]]]
   list.valid_permutations.must_equal(returnme)
  end

end
