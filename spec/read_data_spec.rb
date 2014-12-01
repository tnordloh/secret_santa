require "minitest/autorun"

require_relative "../lib/secret_santa/read_data"

describe SecretSanta::ReadData do

  it "reads santa data from argf" do
    data = File.readlines('./data/test1')
    santas = SecretSanta::ReadData.new(data)
    santas.santas.first.last_name.must_equal("Skywalker")
  end

end
