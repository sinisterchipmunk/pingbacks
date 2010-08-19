require 'rails/generators/active_record'

class PingbackGenerator < ActiveRecord::Generators::Base
  argument :name, :default => "migration"

  def generate_pingback_migration
    migration_template "migrations/create_pingbacks.rb", "db/migrate/create_pingbacks.rb"
  end

  def self.source_root
    File.join(File.dirname(__FILE__), "templates")
  end
end

