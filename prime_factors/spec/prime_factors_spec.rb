require 'rubygems'
gem 'rspec'
require_relative '../lib/prime_factors.rb'

describe PrimeFactors do
  it "should factor 1" do
    PrimeFactors.of(1).should == []
  end
end
