# from https://www.youtube.com/watch?v=dyBybIZJpyA&list=PLVBFw0Pn9e9IduDzgOx7Yoh0ur7SZa7hu&index=3

require_relative "../lib/team.rb"

RSpec.configure do |rspec|
  rspec.deprecation_stream = File.open("./deprecation_warnings.txt", "w")
end

describe Team do
  it "has a name" do
    Team.new.should respond_to :name
  end
  it "has a list of players" do
    Team.new.players.should be_kind_of Array
  end
  it "complains if there is a bad word in the name"
end
