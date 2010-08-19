ENV['RAILS_ENV'] ||= "test"
require File.expand_path(File.join(File.dirname(__FILE__),
                      "../spec_env/rails3/config/environment.rb"))

Dir[File.join(File.dirname(__FILE__), "support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|

end

