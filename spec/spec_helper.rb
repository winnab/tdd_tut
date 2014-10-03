RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end

RSpec.configure do |config|
  config.mock_with :rspec do |mocks|
    mocks.syntax = :should
  end
end

RSpec.configure do |rspec|
  rspec.deprecation_stream = File.open("./deprecation_warnings.txt", "w")
end

RSpec::Mocks.configuration.syntax = :should
