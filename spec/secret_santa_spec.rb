require "minitest/autorun"

require_relative "../lib/secret_santa"

describe SecretSanta do 
  data=File.readlines("./data/test1")
  p SecretSanta.get_santas(data)
end
