require "undraw/helper"

module Undraw
  class Engine < ::Rails::Engine
    initializer 'undraw.assets' do |app|
      %w(stylesheets javascripts).each do |sub|
        app.config.assets.paths << root.join('assets', sub).to_s
      end
    end
    ActionController::Base.send(:helper, Undraw::Helper)
  end
end