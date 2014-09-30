require_relative "../lib/team.rb"
require_relative "../lib/competition.rb"
require_relative "../spec/support/matchers/team_support.rb"

RSpec.configure do |rspec|
  rspec.deprecation_stream = File.open("./deprecation_warnings.txt", "w")
end

describe Competition do
  let(:competition) { Competition.new }
  let(:team) { Team.new("Random Name") }

  context "having no questions" do
    before { competition.stub(:questions => []) }
    it "doesn't accept any teams" do
      competition.should_not allow_teams_to_enter
    end
  end

  context "having questions" do
    before { competition.questions = [ { :title => "Question" } ] }
    subject { competition }

    it { should allow_teams_to_enter }
  end
end
