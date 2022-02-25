require 'inline_svg'
require 'undraw/helper'

module Undraw
  class FileNotFound < IOError; end

  class Engine < ::Rails::Engine
    initializer 'undraw.assets' do |_app|
      ActiveSupport.on_load(:action_controller) do
        ActionController::Base.send(:helper, Undraw::Helper)
      end
    end
  end
end
