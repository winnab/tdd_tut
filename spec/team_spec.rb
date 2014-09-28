# from https://www.youtube.com/watch?v=dyBybIZJpyA&list=PLVBFw0Pn9e9IduDzgOx7Yoh0ur7SZa7hu&index=3

require_relative "../lib/team.rb"

RSpec.configure do |rspec|
  rspec.deprecation_stream = File.open("./deprecation_warnings.txt", "w")
end

describe Team do

  it "has a name" do
    Team.new("Random Name").should respond_to :name
  end

  it "has a list of players" do
    Team.new("Random Name").players.should be_kind_of Array
  end

  it "complains if there is a bad word in the name" do
    expect { Team.new("Crappy name") }.to raise_error
  end

  it "is favored if it has a celebrity in it" do
    expect { Team.new("Random Name", ["George Cloony", "Bob Smith"]).should be_favored}
  end

  context "given a bad list of players" do
    let(:bad_players) { {} }
    it "fails to create given a bad player list" do
      expect { Team.new("Random Name", bad_players) }.to raise_error
      end
  end
end
