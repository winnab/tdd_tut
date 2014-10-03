require 'cucumber/rspec/doubles'
require_relative '../../lib/team.rb'
require_relative '../../lib/competition.rb'

Given /I have a competition with no questions/ do
  @competition = Competition.new
  @competition.stub quesitons: []
end

