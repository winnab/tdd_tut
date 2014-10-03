require "cucumber/rspec/doubles"
require_relative "../../lib/team.rb"
require_relative "../../lib/competition.rb"
require_relative "../../spec/spec_helper.rb"


Given /there is a team called "Random"/ do
  @team = Team.new "Random"
end

Given /I have a competition with no questions/ do
  @competition = Competition.new
  @competition.stub quesitons: []
end

When /a team enters the competition/ do
  @method = -> { @team.enter_competition @competition }
end

Then /I should see an error/ do
  @method.should raise_error Competition::Closed
end
