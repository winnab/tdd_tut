require_relative "../lib/team.rb"
require_relative "../lib/competition.rb"

RSpec.configure do |rspec|
  rspec.deprecation_stream = File.open("./deprecation_warnings.txt", "w")
end

describe Competition do
  # use "let" instead of instance vars for specs
  let(:competition) { Competition.new }
  let(:team) { Team.new("Random Name") }

  # context is the same function a describe
  # context needs support (before method)
  context "having no questions" do
    # can also do before(:each)
    before { competition.questions = [] }
    it "doesn't accept any teams" do
      expect do
        team.enter_competition(competition)
      end.to raise_error Competition::Closed
    end
  end

  context "having questions" do
    before { competition.questions = [ { :title => "Question" } ] }
    subject { competition }

    it { should allow_teams_to_enter }
  end
end
