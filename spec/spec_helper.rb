require 'airborne'


RSpec.configure do |config|  
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  
  config.mock_with :rspec do |mocks| 
    mocks.verify_partial_doubles = true
  end
  
  config.shared_context_metadata_behavior = :apply_to_host_groups

end

Airborne.configure do |p|
  p.base_url = 'http://191.232.189.40:3131'
  p.headers = {
    content_type:'application/json'
  }
end
