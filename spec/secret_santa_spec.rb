require "minitest/autorun"

require_relative "../lib/secret_santa"

describe SecretSanta do 
  it "tests secret santa return" do
    data=File.readlines("./data/test1")
    p SecretSanta.get_santas(data)[0] 
    (SecretSanta.get_santas(data)[0] =~ /luke/).must_equal(16)
  end
end
