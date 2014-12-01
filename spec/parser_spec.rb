require "minitest/autorun"

require_relative "../lib/secret_santa/person"

describe SecretSanta::Person do
  it "can parse a line into first/last/email" do
    parsed = SecretSanta::Person.new("Luke Skywalker   <luke@theforce.net>")
    parsed.first_name.must_equal("Luke")
    parsed.last_name.must_equal("Skywalker")
    parsed.email.must_equal("luke@theforce.net")
  end

  it "creates a list of secret santas" do
    list = []
    File.open("./data/test1").readlines.each do |line|
      list << SecretSanta::Person.new(line)
    end
    list[1].first_name.must_equal("Leia")
  end

  it "checks to see if two people are in the same family" do
    luke = SecretSanta::Person.new("Luke Skywalker   <luke@theforce.net>")
    leia = SecretSanta::Person.new("Leia Skywalker   <leia@therebellion.org>")
    toula = SecretSanta::Person.new("Toula Portakalous <toula@manhunter.org>")
    (luke == leia).must_equal(true)
    (luke != toula).must_equal(true)
  end

end
