require "minitest/autorun"

require_relative "../lib/secret_santa/read_data"

describe SecretSanta::ReadData do

  it "reads santa data from argf" do
   if ARGF.filename == "-"
     puts "please call this test with '#{__FILE__} ./data/test1'"
     puts "the purpose is to validate tha ARGF is working properly"
     exit 1
   end
   santas = SecretSanta::ReadData.new()
   santas.santas.first.last_name.must_equal("Skywalker")
  end

end
