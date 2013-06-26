# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"
Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }


# ActionView::TestCase::TestController.instance_eval do
#   helper Rails.application.routes.url_helpers#, (append other helpers you need)
# end
# ActionView::TestCase::TestController.class_eval do
#   def _routes
#     Rails.application.routes
#   end
# end
