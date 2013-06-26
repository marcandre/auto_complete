require "auto_complete/version"
require "auto_complete/class_methods"

module AutoComplete
  class Engine < Rails::Engine
    # Thanks to http://robots.thoughtbot.com/post/159805560/tips-for-writing-your-own-rails-engine for:
    config.to_prepare do
      ActionView::Helpers.send :include, AutoCompleteMacrosHelper
    end
  end
end

ActionController::Base.send :include, AutoComplete
