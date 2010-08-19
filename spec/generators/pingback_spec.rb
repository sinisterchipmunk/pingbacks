require 'spec_helper'

describe :pingback do
  it "should generate a Pingback migration" do
    subject.should generate(:migration_template,
                            "migrations/create_pingbacks.rb",
                            "db/migrate/create_pingbacks.rb")
  end
end

