require 'rubygems'
gem 'rspec'
require_relative '../lib/prime_factors.rb'

describe PrimeFactors do
  [
    [1, []]
  ].each do |n, factors|
    it "should factor #{n}" do
      PrimeFactors.of(n).should == factors
    end
  end

  it "should factor 1" do
    PrimeFactors.of(1).should == []
  end

  it "should factor 2" do
    PrimeFactors.of(2).should == [2]
  end

end
