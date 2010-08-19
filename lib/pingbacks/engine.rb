require 'rails'
require File.expand_path(File.join(File.dirname(__FILE__), '../pingbacks'))

module Pingbacks
  class Engine < Rails::Engine
    pingbacks_path = File.expand_path(File.join(File.dirname(__FILE__), '../..'))

    paths.lib << File.join(pingbacks_path, 'lib')
    paths.app.controllers << File.join(pingbacks_path, "app/controllers")
    paths.app.helpers << File.join(pingbacks_path, 'app/helpers')
    paths.app.models << File.join(pingbacks_path, "app/models")
    paths.app.views << File.join(pingbacks_path, "app/views")
    paths.config.routes << File.join(pingbacks_path, "rails/routes.rb")
    
    config.autoload_paths << File.join(pingbacks_path, 'lib')
    config.autoload_once_paths << File.join(pingbacks_path, 'lib')

    generators do
      require File.join(pingbacks_path, 'generators/pingback/pingback_generator')
    end
  end
end
